
; int wv_priority_queue_empty_fastcall(wv_priority_queue_t *q)

SECTION code_clib
SECTION code_adt_wv_priority_queue

PUBLIC _wv_priority_queue_empty_fastcall

EXTERN asm_wv_priority_queue_empty

defc _wv_priority_queue_empty_fastcall = asm_wv_priority_queue_empty
