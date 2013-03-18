/* common.h -- those things we define often */
#ifndef _EXT_COMMON_H_
#define _EXT_COMMON_H_


/**
	If a value is within the specified range, then return true.  Otherwise return false.

	@ingroup	misc
	@param	v	The value to test.
	@param	lo	The low bound for the range.
	@param	hi	The high bound for the range.
	@return		Returns true if within range, otherwise false.
*/
#define INRANGE(v,lo,hi) ((v)<=(hi)&&(v)>=(lo))


/**
	Return the higher of two values.

	@ingroup	misc
	@param	a	The first value to compare.
	@param	b	The second value to compare.
	@return		Returns the higher of a or b.
*/
#ifndef MAX
#define MAX(a,b) ((a)>(b)?(a):(b))
#endif


/**
	Return the lower of two values.

	@ingroup	misc
	@param	a	The first value to compare.
	@param	b	The second value to compare.
	@return		Returns the lower of a or b.
*/
#ifndef MIN
#define MIN(a,b) ((a)<(b)?(a):(b))
#endif


/**
	Limit values to within a specified range.

	@ingroup	misc
	@param	a	The value to constrain. NB: CLIP_ASSIGN modifies param 'a' but CLAMP only returns limited value
	@param	lo	The low bound for the range.
	@param	hi	The high bound for the range.
	@return		Returns the value a constrained to the range specified by lo and hi.
*/
#define CLAMP(a, lo, hi) ( (a)>(lo)?( (a)<(hi)?(a):(hi) ):(lo) )
#define CLIP_ASSIGN(a, lo, hi) ((a) = ( (a)>(lo)?( (a)<(hi)?(a):(hi) ):(lo) ))

#ifndef ABS
#define ABS(x) ((x)<0?-(x):(x))
#endif

#endif /* _EXT_COMMON_H_ */
