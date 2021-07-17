
// automatically generated by m4 from headers in proto subdir


#ifndef __ADT_WA_STACK_H__
#define __ADT_WA_STACK_H__

#include <stddef.h>

// DATA STRUCTURES

typedef struct wa_stack_s
{

   void       *data;
   size_t      size;
   size_t      capacity;

} wa_stack_t;

extern size_t __LIB__ wa_stack_capacity(wa_stack_t *s) __smallc __z88dk_fastcall;


extern void __LIB__ wa_stack_clear(wa_stack_t *s) __smallc __z88dk_fastcall;


extern void __LIB__ wa_stack_destroy(wa_stack_t *s) __smallc __z88dk_fastcall;


extern int __LIB__ wa_stack_empty(wa_stack_t *s) __smallc __z88dk_fastcall;


extern wa_stack_t __LIB__ *wa_stack_init(void *p,void *data,size_t capacity) __smallc;
extern wa_stack_t __LIB__ *wa_stack_init_callee(void *p,void *data,size_t capacity) __smallc __z88dk_callee;
#define wa_stack_init(a,b,c) wa_stack_init_callee(a,b,c)


extern void __LIB__ *wa_stack_pop(wa_stack_t *s) __smallc __z88dk_fastcall;


extern int __LIB__ wa_stack_push(wa_stack_t *s,void *item) __smallc;
extern int __LIB__ wa_stack_push_callee(wa_stack_t *s,void *item) __smallc __z88dk_callee;
#define wa_stack_push(a,b) wa_stack_push_callee(a,b)


extern size_t __LIB__ wa_stack_size(wa_stack_t *s) __smallc __z88dk_fastcall;


extern void __LIB__ *wa_stack_top(wa_stack_t *s) __smallc __z88dk_fastcall;



#endif
