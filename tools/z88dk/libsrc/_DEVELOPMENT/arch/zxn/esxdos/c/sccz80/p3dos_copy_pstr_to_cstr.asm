; unsigned char *p3dos_copy_pstr_to_cstr(char *cdst, const char *psrc)

SECTION code_esxdos

PUBLIC p3dos_copy_pstr_to_cstr

EXTERN asm_p3dos_copy_pstr_to_cstr

p3dos_copy_pstr_to_cstr:

   pop af
   pop hl
   pop de
   
   push de
   push hl
   push af
   
   jp asm_p3dos_copy_pstr_to_cstr
