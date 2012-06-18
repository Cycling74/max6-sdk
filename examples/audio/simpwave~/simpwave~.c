/**
	@file
	simpwave~ - a simple wavetable oscillator using buffer~
	
	@ingroup	examples	
*/

#include "ext.h"
#include "z_dsp.h"
#include "math.h"
#include "buffer.h"
#include "ext_atomic.h"
#include "ext_obex.h"

#ifdef WIN_VERSION
#define snprintf _snprintf
#endif // WIN_VERSION


typedef struct _simpwave {
	t_pxobject w_obj;
	t_buffer *w_buf;
	t_symbol *w_name;
	long w_begin;
	long w_len;
	float w_start;
	float w_end;
	float w_msr;
	long w_nchans;
	short w_connected[2];
	long w_bframes;
	long w_bmodtime;
} t_simpwave;


void *simpwave_new(t_symbol *s,  long argc, t_atom *argv);
void simpwave_assist(t_simpwave *x, void *b, long m, long a, char *s);
void simpwave_setup(t_simpwave *x, t_symbol *s, double sr);
void simpwave_limits(t_simpwave *x, t_buffer *b);
void simpwave_set(t_simpwave *x, t_symbol *s, long ac, t_atom *av);
void simpwave_float(t_simpwave *x, double f);
void simpwave_int(t_simpwave *x, long n);
void simpwave_dblclick(t_simpwave *x);
void simpwave_perform64(t_simpwave *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam);
void simpwave_dsp64(t_simpwave *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags);


static t_symbol *ps_nothing, *ps_buffer;
static t_class *s_simpwave_class;


int main(void)
{
	t_class *c = class_new("simpwave~", (method)simpwave_new, (method)dsp_free, sizeof(t_simpwave), NULL, A_GIMME, 0);
	
    class_addmethod(c, (method)simpwave_dsp64,		"dsp64",	A_CANT, 0);
    class_addmethod(c, (method)simpwave_float,		"float",	A_FLOAT, 0);
    class_addmethod(c, (method)simpwave_int,		"int",		A_LONG, 0);
    class_addmethod(c, (method)simpwave_set,		"set",		A_GIMME, 0);
    class_addmethod(c, (method)simpwave_assist,		"assist",	A_CANT, 0);
    class_addmethod(c, (method)simpwave_dblclick,	"dblclick",	A_CANT, 0);

    class_dspinit(c);
	class_register(CLASS_BOX, c);
	s_simpwave_class = c;
	
    ps_nothing = gensym("");
    ps_buffer = gensym("buffer~");
	
	return 0;
}


void *simpwave_new(t_symbol *s,  long argc, t_atom *argv)
{
	t_simpwave *x = (t_simpwave *)object_alloc(s_simpwave_class);
	t_symbol *buf=0;
	float start=0., end=0.; 
	dsp_setup((t_pxobject *)x,3);
	// x->w_phase = 0;
	buf = atom_getsymarg(0,argc,argv);
	start = atom_getfloatarg(1,argc,argv);
	end = atom_getfloatarg(2,argc,argv);
	
	x->w_name = buf;
	x->w_msr = sys_getsr() * 0.001;
	x->w_start = start;
	x->w_end = end;
	x->w_begin = start * x->w_msr;
	x->w_len = (end - start) * x->w_msr;
	x->w_buf = 0;
	x->w_nchans = 1;
	outlet_new((t_object *)x, "signal");		// audio outlet
	return (x);
}


void simpwave_assist(t_simpwave *x, void *b, long m, long a, char *s)
{	
	if (m == ASSIST_INLET) {	// inlets
		switch (a) {
			case 0:	snprintf(s, 256, "(signal) Table Position (from 0 to 1)");	break;
			case 1:	snprintf(s, 256, "(signal/float) Starting Table Location in ms");	break;
			case 2:	snprintf(s, 256, "(signal/float) Ending Table Location in ms");	break;
		}
	} 
	else {	// outlet
		snprintf(s, 256, "(signal) Output %ld", a+1);
	}
}


void simpwave_setup(t_simpwave *x, t_symbol *s, double sr)
{
	t_buffer *b;
	
	if (sr)
		x->w_msr = sr * .001;
	if (s != ps_nothing) {
		if ((b = (t_buffer *)(s->s_thing)) && ob_sym(b) == ps_buffer) {
			simpwave_limits(x,b);
			x->w_buf = b;
		} else
			x->w_buf = 0;
	} else
		x->w_buf = 0;
	x->w_name = s;
}


void simpwave_limits(t_simpwave *x, t_buffer *b)
{
	long framesize;
	
	if (b) {
		framesize = b->b_nchans; // floats in a frame, not bytes
	
		x->w_bframes = b->b_frames;
		x->w_bmodtime = b->b_modtime;

		x->w_begin = (long)(x->w_start * b->b_msr) * framesize;//buffer sr-jkc
		if (!x->w_end)	{// use entire table, eek!
			x->w_len = b->b_frames;
		} else {
			x->w_len = (x->w_end - x->w_start) * b->b_msr; //buffer sr-jkc
		}
		// now restrict these values
		if (x->w_begin < 0)
			x->w_begin = 0;
		else if (x->w_begin >= b->b_frames * framesize)
			x->w_begin = (b->b_frames - 1) * framesize;
		if (x->w_begin + (x->w_len * framesize) >= b->b_frames * framesize) {
			x->w_len = b->b_frames - (x->w_begin / framesize);
		}
	}
}


void simpwave_set(t_simpwave *x, t_symbol *s, long ac, t_atom *av)
{
	t_symbol *name;
	double start, end;
	
	name = (ac) ? atom_getsym(av) : gensym("");
	start = (ac>1) ? atom_getfloat(av+1) : 0.;
	end = (ac>2) ? atom_getfloat(av+2) : 0.;
	
	if (start < 0)
		start = 0;
	if (end < 0)
		end = 0;
	x->w_start = start;
	x->w_end = end;
	simpwave_setup(x,name,0);
}


void simpwave_float(t_simpwave *x, double f)
{
	long in = proxy_getinlet((t_object *)x);
	
	if (in == 1) {		// set min
		if (f < 0)
			f = 0;
		if (f > x->w_end)
			x->w_end = f;
		x->w_start = f;
		simpwave_limits(x,x->w_buf);
	} 
	else if (in == 2) {	// set max
		if (f < 0)
			f = 0;
		if (f < x->w_start)
			x->w_start = f;
		x->w_end = f;
		simpwave_limits(x,x->w_buf);
	}
}


void simpwave_int(t_simpwave *x, long n)
{
	simpwave_float(x,(double)n);
}


void simpwave_dblclick(t_simpwave *x)
{
	t_buffer *b;
	
	if ((b = (t_buffer *)(x->w_name->s_thing)) && ob_sym(b) == ps_buffer)
		mess0((struct object *)b,gensym("dblclick"));
}


void simpwave_perform64(t_simpwave *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
    t_double	*in = ins[0];
    t_double	*out = outs[0];
    t_double	min = x->w_connected[0]? *ins[1] : x->w_start;
    t_double	max = x->w_connected[1]? *ins[2] : x->w_end;
    int			n = sampleframes;
    float		*b;
    long		len, dex, framesize;
	double		v;
    
	if (buffer_perform_begin(x->w_buf) != MAX_ERR_NONE)
		goto zero;
	
	b = x->w_buf->b_samples;
	framesize = x->w_buf->b_nchans;
	
	if ( (x->w_bframes != x->w_buf->b_frames) || (x->w_bmodtime != x->w_buf->b_modtime) ) { 	// buffer has changed	
		simpwave_limits(x, x->w_buf);	
		if (!x->w_connected[0])
			min = x->w_start;
		if (!x->w_connected[1])
			max = x->w_end;
	}
	
	if (min != x->w_start || max != x->w_end) {
		if (min < 0.)
			min = 0.;
		if (max < 0.)
			max = 0.;
		if (min > max)
			x->w_end = x->w_start = min;
		else {
			x->w_start = min;
			x->w_end = max;
		}
		simpwave_limits(x, x->w_buf);
	}
	
	b += x->w_begin;
	len = x->w_len;
	
	if (framesize == 1) {
		while (n--) {
			v = *in++;
			if (v < 0)
				v = 0;
			if (v > 1)
				v = 1;
			dex = v * (double)len;
			if (dex>len-1) 
				dex = len-1;  
			*out++ = b[dex];
		}
	} 
	else if (framesize > 1) {
		while (n--) {
			v = *in++;
			if (v < 0)
				v = 0;
			if (v > 1)
				v = 1;
			dex = (long)(v * (double)len) * framesize;
			if (dex>(len-1)*framesize) 
				dex = (len-1)*framesize;  
			*out++ = b[dex];
		}
	}
	buffer_perform_end(x->w_buf);
	return;
zero:
	while (n--) 
		*out++ = 0.;
}


void simpwave_dsp64(t_simpwave *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	simpwave_setup(x, x->w_name, samplerate);
	x->w_connected[0] = count[1];
	x->w_connected[1] = count[2];
	if (x->w_nchans == 1)
		object_method(dsp64, gensym("dsp_add64"), x, simpwave_perform64, 0, NULL);
	else
		object_error((t_object*)x, "only supports a 1 channel buffer~");
	
	simpwave_limits(x, x->w_buf);	// just in case buffer was added after float message received
}

