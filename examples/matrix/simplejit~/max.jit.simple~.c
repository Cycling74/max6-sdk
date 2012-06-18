/**
	 @file
	 jit.simple - simple example of a Jitter external
	 multiplies an incoming matrix by a constant
	 
	 @ingroup	examples
	 
	 Copyright 2009 - Cycling '74
	 Timothy Place, tim@cycling74.com
*/

#include "jit.common.h"
#include "max.jit.mop.h"
#include "z_dsp.h"
#include "ext_obex.h"


// Max object instance data
// Note: most instance data is in the Jitter object which we will wrap
typedef struct _max_jit_simple {
	t_pxobject	ob;
	void		*obex;
	t_object	*simple;
} t_max_jit_simple;


// prototypes
BEGIN_USING_C_LINKAGE
t_jit_err	jit_simple_init(void);
void		*max_jit_simple_new(t_symbol *s, long argc, t_atom *argv);
void		max_jit_simple_free(t_max_jit_simple *x);
t_int		*max_jit_simple_perform(t_int *w);
void		max_jit_simple_dsp(t_max_jit_simple *x, t_signal **sp, short *count);
END_USING_C_LINKAGE

// globals
static void		*s_max_jit_simple_class = NULL;
static t_symbol	*ps_gain = NULL;


/************************************************************************************/

int main(void)
{	
	void *p, *q;
	
	jit_simple_init();	
	setup((t_messlist**)&s_max_jit_simple_class, (method)max_jit_simple_new, (method)max_jit_simple_free, sizeof(t_max_jit_simple), 0, A_GIMME, 0);

	p = max_jit_classex_setup(calcoffset(t_max_jit_simple, obex));
	q = jit_class_findbyname(gensym("jit_simple~"));    
    max_jit_classex_mop_wrap(p, q, 0);							// attrs & methods for name, type, dim, planecount, bang, outputmatrix, etc
    max_jit_classex_standard_wrap(p, q, 0);						// attrs & methods for getattributes, dumpout, maxjitclassaddmethods, etc
    addmess((method)max_jit_mop_assist, "assist", A_CANT, 0);	// standard matrix-operator (mop) assist fn
	
	addmess((method)max_jit_simple_dsp, "dsp", A_CANT, 0);
	dsp_initclass();

	ps_gain = gensym("gain");
	return 0;
}


/************************************************************************************/
// Object Life Cycle

void *max_jit_simple_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_simple *x;

	x = (t_max_jit_simple*)max_jit_obex_new(s_max_jit_simple_class, gensym("jit_simple~"));
	if (x) {
		x->simple = (t_object*)jit_object_new(gensym("jit_simple~"));
		if (x->simple) {
			max_jit_mop_setup_simple(x, x->simple, argc, argv);			
			max_jit_attr_args(x, argc, argv);
		} 
		else {
			jit_object_error((t_object*)x, "jit.simple~: could not allocate object");
			freeobject((t_object*)x);
			x = NULL;
		}
		dsp_setup((t_pxobject*)x, 1);
	}
	return (x);
}


void max_jit_simple_free(t_max_jit_simple *x)
{
	dsp_free((t_pxobject*)x);
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	max_jit_obex_free(x);
}


t_int *max_jit_simple_perform(t_int *w)
{
	t_max_jit_simple	*x	= (t_max_jit_simple*)(w[1]);
	float				*in	= (float*)w[2];
	long				n	= (int)(w[3]);
	
	if (x->ob.z_disabled)
		goto out;

	while (n--) {
		object_method_float(x->simple, ps_gain, *in++, NULL);
	}
out:
	return w+4;
}


void max_jit_simple_dsp(t_max_jit_simple *x, t_signal **sp, short *count)
{
	dsp_add(max_jit_simple_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}
