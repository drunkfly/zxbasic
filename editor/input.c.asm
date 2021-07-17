;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12036 (MINGW64)
;--------------------------------------------------------
; Processed by Z88DK
;--------------------------------------------------------
	
	EXTERN __divschar
	EXTERN __divschar_callee
	EXTERN __divsint
	EXTERN __divsint_callee
	EXTERN __divslong
	EXTERN __divslong_callee
	EXTERN __divslonglong
	EXTERN __divslonglong_callee
	EXTERN __divsuchar
	EXTERN __divsuchar_callee
	EXTERN __divuchar
	EXTERN __divuchar_callee
	EXTERN __divuint
	EXTERN __divuint_callee
	EXTERN __divulong
	EXTERN __divulong_callee
	EXTERN __divulonglong
	EXTERN __divulonglong_callee
	EXTERN __divuschar
	EXTERN __divuschar_callee
	EXTERN __modschar
	EXTERN __modschar_callee
	EXTERN __modsint
	EXTERN __modsint_callee
	EXTERN __modslong
	EXTERN __modslong_callee
	EXTERN __modslonglong
	EXTERN __modslonglong_callee
	EXTERN __modsuchar
	EXTERN __modsuchar_callee
	EXTERN __moduchar
	EXTERN __moduchar_callee
	EXTERN __moduint
	EXTERN __moduint_callee
	EXTERN __modulong
	EXTERN __modulong_callee
	EXTERN __modulonglong
	EXTERN __modulonglong_callee
	EXTERN __moduschar
	EXTERN __moduschar_callee
	EXTERN __mulint
	EXTERN __mulint_callee
	EXTERN __mullong
	EXTERN __mullong_callee
	EXTERN __mullonglong
	EXTERN __mullonglong_callee
	EXTERN __mulschar
	EXTERN __mulschar_callee
	EXTERN __mulsuchar
	EXTERN __mulsuchar_callee
	EXTERN __muluchar
	EXTERN __muluchar_callee
	EXTERN __muluschar
	EXTERN __muluschar_callee
	EXTERN __rlslonglong
	EXTERN __rlslonglong_callee
	EXTERN __rlulonglong
	EXTERN __rlulonglong_callee
	EXTERN __rrslonglong
	EXTERN __rrslonglong_callee
	EXTERN __rrulonglong
	EXTERN __rrulonglong_callee
	EXTERN ___sdcc_call_hl
	EXTERN ___sdcc_call_iy
	EXTERN ___sdcc_enter_ix
	EXTERN banked_call
	EXTERN _banked_ret
	EXTERN ___fs2schar
	EXTERN ___fs2schar_callee
	EXTERN ___fs2sint
	EXTERN ___fs2sint_callee
	EXTERN ___fs2slong
	EXTERN ___fs2slong_callee
	EXTERN ___fs2slonglong
	EXTERN ___fs2slonglong_callee
	EXTERN ___fs2uchar
	EXTERN ___fs2uchar_callee
	EXTERN ___fs2uint
	EXTERN ___fs2uint_callee
	EXTERN ___fs2ulong
	EXTERN ___fs2ulong_callee
	EXTERN ___fs2ulonglong
	EXTERN ___fs2ulonglong_callee
	EXTERN ___fsadd
	EXTERN ___fsadd_callee
	EXTERN ___fsdiv
	EXTERN ___fsdiv_callee
	EXTERN ___fseq
	EXTERN ___fseq_callee
	EXTERN ___fsgt
	EXTERN ___fsgt_callee
	EXTERN ___fslt
	EXTERN ___fslt_callee
	EXTERN ___fsmul
	EXTERN ___fsmul_callee
	EXTERN ___fsneq
	EXTERN ___fsneq_callee
	EXTERN ___fssub
	EXTERN ___fssub_callee
	EXTERN ___schar2fs
	EXTERN ___schar2fs_callee
	EXTERN ___sint2fs
	EXTERN ___sint2fs_callee
	EXTERN ___slong2fs
	EXTERN ___slong2fs_callee
	EXTERN ___slonglong2fs
	EXTERN ___slonglong2fs_callee
	EXTERN ___uchar2fs
	EXTERN ___uchar2fs_callee
	EXTERN ___uint2fs
	EXTERN ___uint2fs_callee
	EXTERN ___ulong2fs
	EXTERN ___ulong2fs_callee
	EXTERN ___ulonglong2fs
	EXTERN ___ulonglong2fs_callee
	EXTERN ____sdcc_2_copy_src_mhl_dst_deix
	EXTERN ____sdcc_2_copy_src_mhl_dst_bcix
	EXTERN ____sdcc_4_copy_src_mhl_dst_deix
	EXTERN ____sdcc_4_copy_src_mhl_dst_bcix
	EXTERN ____sdcc_4_copy_src_mhl_dst_mbc
	EXTERN ____sdcc_4_ldi_nosave_bc
	EXTERN ____sdcc_4_ldi_save_bc
	EXTERN ____sdcc_4_push_hlix
	EXTERN ____sdcc_4_push_mhl
	EXTERN ____sdcc_lib_setmem_hl
	EXTERN ____sdcc_ll_add_de_bc_hl
	EXTERN ____sdcc_ll_add_de_bc_hlix
	EXTERN ____sdcc_ll_add_de_hlix_bc
	EXTERN ____sdcc_ll_add_de_hlix_bcix
	EXTERN ____sdcc_ll_add_deix_bc_hl
	EXTERN ____sdcc_ll_add_deix_hlix
	EXTERN ____sdcc_ll_add_hlix_bc_deix
	EXTERN ____sdcc_ll_add_hlix_deix_bc
	EXTERN ____sdcc_ll_add_hlix_deix_bcix
	EXTERN ____sdcc_ll_asr_hlix_a
	EXTERN ____sdcc_ll_asr_mbc_a
	EXTERN ____sdcc_ll_copy_src_de_dst_hlix
	EXTERN ____sdcc_ll_copy_src_de_dst_hlsp
	EXTERN ____sdcc_ll_copy_src_deix_dst_hl
	EXTERN ____sdcc_ll_copy_src_deix_dst_hlix
	EXTERN ____sdcc_ll_copy_src_deixm_dst_hlsp
	EXTERN ____sdcc_ll_copy_src_desp_dst_hlsp
	EXTERN ____sdcc_ll_copy_src_hl_dst_de
	EXTERN ____sdcc_ll_copy_src_hlsp_dst_de
	EXTERN ____sdcc_ll_copy_src_hlsp_dst_deixm
	EXTERN ____sdcc_ll_lsl_hlix_a
	EXTERN ____sdcc_ll_lsl_mbc_a
	EXTERN ____sdcc_ll_lsr_hlix_a
	EXTERN ____sdcc_ll_lsr_mbc_a
	EXTERN ____sdcc_ll_push_hlix
	EXTERN ____sdcc_ll_push_mhl
	EXTERN ____sdcc_ll_sub_de_bc_hl
	EXTERN ____sdcc_ll_sub_de_bc_hlix
	EXTERN ____sdcc_ll_sub_de_hlix_bc
	EXTERN ____sdcc_ll_sub_de_hlix_bcix
	EXTERN ____sdcc_ll_sub_deix_bc_hl
	EXTERN ____sdcc_ll_sub_deix_hlix
	EXTERN ____sdcc_ll_sub_hlix_bc_deix
	EXTERN ____sdcc_ll_sub_hlix_deix_bc
	EXTERN ____sdcc_ll_sub_hlix_deix_bcix
	EXTERN ____sdcc_load_debc_deix
	EXTERN ____sdcc_load_dehl_deix
	EXTERN ____sdcc_load_debc_mhl
	EXTERN ____sdcc_load_hlde_mhl
	EXTERN ____sdcc_store_dehl_bcix
	EXTERN ____sdcc_store_debc_hlix
	EXTERN ____sdcc_store_debc_mhl
	EXTERN ____sdcc_cpu_pop_ei
	EXTERN ____sdcc_cpu_pop_ei_jp
	EXTERN ____sdcc_cpu_push_di
	EXTERN ____sdcc_outi
	EXTERN ____sdcc_outi_128
	EXTERN ____sdcc_outi_256
	EXTERN ____sdcc_ldi
	EXTERN ____sdcc_ldi_128
	EXTERN ____sdcc_ldi_256
	EXTERN ____sdcc_4_copy_srcd_hlix_dst_deix
	EXTERN ____sdcc_4_and_src_mbc_mhl_dst_deix
	EXTERN ____sdcc_4_or_src_mbc_mhl_dst_deix
	EXTERN ____sdcc_4_xor_src_mbc_mhl_dst_deix
	EXTERN ____sdcc_4_or_src_dehl_dst_bcix
	EXTERN ____sdcc_4_xor_src_dehl_dst_bcix
	EXTERN ____sdcc_4_and_src_dehl_dst_bcix
	EXTERN ____sdcc_4_xor_src_mbc_mhl_dst_debc
	EXTERN ____sdcc_4_or_src_mbc_mhl_dst_debc
	EXTERN ____sdcc_4_and_src_mbc_mhl_dst_debc
	EXTERN ____sdcc_4_cpl_src_mhl_dst_debc
	EXTERN ____sdcc_4_xor_src_debc_mhl_dst_debc
	EXTERN ____sdcc_4_or_src_debc_mhl_dst_debc
	EXTERN ____sdcc_4_and_src_debc_mhl_dst_debc
	EXTERN ____sdcc_4_and_src_debc_hlix_dst_debc
	EXTERN ____sdcc_4_or_src_debc_hlix_dst_debc
	EXTERN ____sdcc_4_xor_src_debc_hlix_dst_debc

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	GLOBAL _addChar
	GLOBAL _drawCursor
	GLOBAL _moveCursorRight
	GLOBAL _moveCursorLeft
	GLOBAL _blink
	GLOBAL _capsLock
	GLOBAL _inputBuf
	GLOBAL _lineLength
	GLOBAL _lineOff
	GLOBAL _linePos
	GLOBAL _input
	GLOBAL _readKey
;--------------------------------------------------------
; Externals used
;--------------------------------------------------------
	GLOBAL _initLines
	GLOBAL _setLine
	GLOBAL _extractLineNumber
	GLOBAL _gotoxy
	GLOBAL _ffsll_callee
	GLOBAL _ffsll
	GLOBAL _strxfrm_callee
	GLOBAL _strxfrm
	GLOBAL _strupr_fastcall
	GLOBAL _strupr
	GLOBAL _strtok_r_callee
	GLOBAL _strtok_r
	GLOBAL _strtok_callee
	GLOBAL _strtok
	GLOBAL _strstrip_fastcall
	GLOBAL _strstrip
	GLOBAL _strstr_callee
	GLOBAL _strstr
	GLOBAL _strspn_callee
	GLOBAL _strspn
	GLOBAL _strsep_callee
	GLOBAL _strsep
	GLOBAL _strrstrip_fastcall
	GLOBAL _strrstrip
	GLOBAL _strrstr_callee
	GLOBAL _strrstr
	GLOBAL _strrspn_callee
	GLOBAL _strrspn
	GLOBAL _strrev_fastcall
	GLOBAL _strrev
	GLOBAL _strrcspn_callee
	GLOBAL _strrcspn
	GLOBAL _strrchr_callee
	GLOBAL _strrchr
	GLOBAL _strpbrk_callee
	GLOBAL _strpbrk
	GLOBAL _strnlen_callee
	GLOBAL _strnlen
	GLOBAL _strnicmp_callee
	GLOBAL _strnicmp
	GLOBAL _strndup_callee
	GLOBAL _strndup
	GLOBAL _strncpy_callee
	GLOBAL _strncpy
	GLOBAL _strncmp_callee
	GLOBAL _strncmp
	GLOBAL _strnchr_callee
	GLOBAL _strnchr
	GLOBAL _strncat_callee
	GLOBAL _strncat
	GLOBAL _strncasecmp_callee
	GLOBAL _strncasecmp
	GLOBAL _strlwr_fastcall
	GLOBAL _strlwr
	GLOBAL _strlen_fastcall
	GLOBAL _strlen
	GLOBAL _strlcpy_callee
	GLOBAL _strlcpy
	GLOBAL _strlcat_callee
	GLOBAL _strlcat
	GLOBAL _stricmp_callee
	GLOBAL _stricmp
	GLOBAL _strerror_fastcall
	GLOBAL _strerror
	GLOBAL _strdup_fastcall
	GLOBAL _strdup
	GLOBAL _strcspn_callee
	GLOBAL _strcspn
	GLOBAL _strcpy_callee
	GLOBAL _strcpy
	GLOBAL _strcoll_callee
	GLOBAL _strcoll
	GLOBAL _strcmp_callee
	GLOBAL _strcmp
	GLOBAL _strchrnul_callee
	GLOBAL _strchrnul
	GLOBAL _strchr_callee
	GLOBAL _strchr
	GLOBAL _strcat_callee
	GLOBAL _strcat
	GLOBAL _strcasecmp_callee
	GLOBAL _strcasecmp
	GLOBAL _stpncpy_callee
	GLOBAL _stpncpy
	GLOBAL _stpcpy_callee
	GLOBAL _stpcpy
	GLOBAL _memswap_callee
	GLOBAL _memswap
	GLOBAL _memset_callee
	GLOBAL _memset
	GLOBAL _memrchr_callee
	GLOBAL _memrchr
	GLOBAL _memmove_callee
	GLOBAL _memmove
	GLOBAL _memmem_callee
	GLOBAL _memmem
	GLOBAL _memcpy_callee
	GLOBAL _memcpy
	GLOBAL _memcmp_callee
	GLOBAL _memcmp
	GLOBAL _memchr_callee
	GLOBAL _memchr
	GLOBAL _memccpy_callee
	GLOBAL _memccpy
	GLOBAL _ffsl_fastcall
	GLOBAL _ffsl
	GLOBAL _ffs_fastcall
	GLOBAL _ffs
	GLOBAL __strrstrip__fastcall
	GLOBAL __strrstrip_
	GLOBAL __memupr__callee
	GLOBAL __memupr_
	GLOBAL __memstrcpy__callee
	GLOBAL __memstrcpy_
	GLOBAL __memlwr__callee
	GLOBAL __memlwr_
	GLOBAL _rawmemchr_callee
	GLOBAL _rawmemchr
	GLOBAL _strnset_callee
	GLOBAL _strnset
	GLOBAL _strset_callee
	GLOBAL _strset
	GLOBAL _rindex_callee
	GLOBAL _rindex
	GLOBAL _index_callee
	GLOBAL _index
	GLOBAL _bzero_callee
	GLOBAL _bzero
	GLOBAL _bcopy_callee
	GLOBAL _bcopy
	GLOBAL _bcmp_callee
	GLOBAL _bcmp
	GLOBAL _vscanf_unlocked_callee
	GLOBAL _vscanf_unlocked
	GLOBAL _vprintf_unlocked_callee
	GLOBAL _vprintf_unlocked
	GLOBAL _vfscanf_unlocked_callee
	GLOBAL _vfscanf_unlocked
	GLOBAL _vfprintf_unlocked_callee
	GLOBAL _vfprintf_unlocked
	GLOBAL _ungetc_unlocked_callee
	GLOBAL _ungetc_unlocked
	GLOBAL _scanf_unlocked
	GLOBAL _rewind_unlocked_fastcall
	GLOBAL _rewind_unlocked
	GLOBAL _puts_unlocked_fastcall
	GLOBAL _puts_unlocked
	GLOBAL _putchar_unlocked_fastcall
	GLOBAL _putchar_unlocked
	GLOBAL _putc_unlocked_callee
	GLOBAL _putc_unlocked
	GLOBAL _printf_unlocked
	GLOBAL _gets_unlocked_fastcall
	GLOBAL _gets_unlocked
	GLOBAL _getline_unlocked_callee
	GLOBAL _getline_unlocked
	GLOBAL _getdelim_unlocked_callee
	GLOBAL _getdelim_unlocked
	GLOBAL _getchar_unlocked
	GLOBAL _getc_unlocked_fastcall
	GLOBAL _getc_unlocked
	GLOBAL _fwrite_unlocked_callee
	GLOBAL _fwrite_unlocked
	GLOBAL _ftell_unlocked_fastcall
	GLOBAL _ftell_unlocked
	GLOBAL _fsetpos_unlocked_callee
	GLOBAL _fsetpos_unlocked
	GLOBAL _fseek_unlocked_callee
	GLOBAL _fseek_unlocked
	GLOBAL _fscanf_unlocked
	GLOBAL _freopen_unlocked_callee
	GLOBAL _freopen_unlocked
	GLOBAL _fread_unlocked_callee
	GLOBAL _fread_unlocked
	GLOBAL _fputs_unlocked_callee
	GLOBAL _fputs_unlocked
	GLOBAL _fputc_unlocked_callee
	GLOBAL _fputc_unlocked
	GLOBAL _fprintf_unlocked
	GLOBAL _fileno_unlocked_fastcall
	GLOBAL _fileno_unlocked
	GLOBAL _fgets_unlocked_callee
	GLOBAL _fgets_unlocked
	GLOBAL _fgetpos_unlocked_callee
	GLOBAL _fgetpos_unlocked
	GLOBAL _fgetc_unlocked_fastcall
	GLOBAL _fgetc_unlocked
	GLOBAL _fflush_unlocked_fastcall
	GLOBAL _fflush_unlocked
	GLOBAL _ferror_unlocked_fastcall
	GLOBAL _ferror_unlocked
	GLOBAL _feof_unlocked_fastcall
	GLOBAL _feof_unlocked
	GLOBAL _fclose_unlocked_fastcall
	GLOBAL _fclose_unlocked
	GLOBAL _clearerr_unlocked_fastcall
	GLOBAL _clearerr_unlocked
	GLOBAL _vsscanf_callee
	GLOBAL _vsscanf
	GLOBAL _vsprintf_callee
	GLOBAL _vsprintf
	GLOBAL _vsnprintf_callee
	GLOBAL _vsnprintf
	GLOBAL _vscanf_callee
	GLOBAL _vscanf
	GLOBAL _vprintf_callee
	GLOBAL _vprintf
	GLOBAL _vfscanf_callee
	GLOBAL _vfscanf
	GLOBAL _vfprintf_callee
	GLOBAL _vfprintf
	GLOBAL _vasprintf_callee
	GLOBAL _vasprintf
	GLOBAL _ungetc_callee
	GLOBAL _ungetc
	GLOBAL _sscanf
	GLOBAL _sprintf
	GLOBAL _snprintf
	GLOBAL _scanf
	GLOBAL _rewind_fastcall
	GLOBAL _rewind
	GLOBAL _puts_fastcall
	GLOBAL _puts
	GLOBAL _putchar_fastcall
	GLOBAL _putchar
	GLOBAL _putc_callee
	GLOBAL _putc
	GLOBAL _printf
	GLOBAL _perror_fastcall
	GLOBAL _perror
	GLOBAL _open_memstream_callee
	GLOBAL _open_memstream
	GLOBAL _obstack_vprintf_callee
	GLOBAL _obstack_vprintf
	GLOBAL _obstack_printf
	GLOBAL _gets_fastcall
	GLOBAL _gets
	GLOBAL _getline_callee
	GLOBAL _getline
	GLOBAL _getdelim_callee
	GLOBAL _getdelim
	GLOBAL _getchar
	GLOBAL _getc_fastcall
	GLOBAL _getc
	GLOBAL _fwrite_callee
	GLOBAL _fwrite
	GLOBAL _funlockfile_fastcall
	GLOBAL _funlockfile
	GLOBAL _ftrylockfile_fastcall
	GLOBAL _ftrylockfile
	GLOBAL _ftell_fastcall
	GLOBAL _ftell
	GLOBAL _fsetpos_callee
	GLOBAL _fsetpos
	GLOBAL _fseek_callee
	GLOBAL _fseek
	GLOBAL _fscanf
	GLOBAL _freopen_callee
	GLOBAL _freopen
	GLOBAL _fread_callee
	GLOBAL _fread
	GLOBAL _fputs_callee
	GLOBAL _fputs
	GLOBAL _fputc_callee
	GLOBAL _fputc
	GLOBAL _fprintf
	GLOBAL _fopen_callee
	GLOBAL _fopen
	GLOBAL _fmemopen_callee
	GLOBAL _fmemopen
	GLOBAL _flockfile_fastcall
	GLOBAL _flockfile
	GLOBAL _fileno_fastcall
	GLOBAL _fileno
	GLOBAL _fgets_callee
	GLOBAL _fgets
	GLOBAL _fgetpos_callee
	GLOBAL _fgetpos
	GLOBAL _fgetc_fastcall
	GLOBAL _fgetc
	GLOBAL _fflush_fastcall
	GLOBAL _fflush
	GLOBAL _ferror_fastcall
	GLOBAL _ferror
	GLOBAL _feof_fastcall
	GLOBAL _feof
	GLOBAL _fdopen_callee
	GLOBAL _fdopen
	GLOBAL _fclose_fastcall
	GLOBAL _fclose
	GLOBAL _clearerr_fastcall
	GLOBAL _clearerr
	GLOBAL _asprintf
	GLOBAL __fmemopen__callee
	GLOBAL __fmemopen_
	GLOBAL _lineCount
	GLOBAL _lines
	GLOBAL _stderr
	GLOBAL _stdout
	GLOBAL _stdin
	GLOBAL __MAX_FOPEN
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
defc _port00FE	=	0x00fe
defc _portFEFE	=	0xfefe
defc _portFDFE	=	0xfdfe
defc _portFBFE	=	0xfbfe
defc _portF7FE	=	0xf7fe
defc _portEFFE	=	0xeffe
defc _portDFFE	=	0xdffe
defc _portBFFE	=	0xbffe
defc _port7FFE	=	0x7ffe
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	SECTION bss_compiler
_linePos:
	DEFS 1
_lineOff:
	DEFS 1
_lineLength:
	DEFS 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	
IF 0
	
; .area _INITIALIZED removed by z88dk
	
_inputBuf:
	DEFS 257
_capsLock:
	DEFS 1
_blink:
	DEFS 1
	
ENDIF
	
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	SECTION IGNORE
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	SECTION code_crt_init
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	SECTION IGNORE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	SECTION code_compiler
;	---------------------------------
; Function moveCursorLeft
; ---------------------------------
_moveCursorLeft:
	ld	hl,_linePos
	ld	a, (hl)
	or	a, a
	jr	Z,l_moveCursorLeft_00104
	dec	(hl)
	jr	l_moveCursorLeft_00106
l_moveCursorLeft_00104:
	ld	hl,_lineOff
	ld	a, (hl)
	or	a, a
	ret	Z
	dec	(hl)
l_moveCursorLeft_00106:
	ret
	SECTION code_compiler
;	---------------------------------
; Function moveCursorRight
; ---------------------------------
_moveCursorRight:
	ld	hl,_linePos
	ld	a, (hl)
	sub	a,0x3f
	jr	NC,l_moveCursorRight_00102
	inc	(hl)
	jr	l_moveCursorRight_00104
l_moveCursorRight_00102:
	ld	hl,_lineOff
	inc	(hl)
l_moveCursorRight_00104:
	ret
	SECTION code_compiler
;	---------------------------------
; Function drawCursor
; ---------------------------------
_drawCursor:
	ld	hl,_linePos
	ld	a, (hl)
	inc	a
	ld	h,0x18
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_gotoxy
	pop	af
	ld	a,(_blink)
	and	a,0x0f
	ld	c, a
	ld	b,0x00
	ld	a, c
	sub	a,0x08
	ld	a, b
	rla
	ccf
	rra
	sbc	a,0x80
	jr	NC,l_drawCursor_00102
	ld	hl, (_stdout)
	push	hl
	ld	hl,0x0049
	push	hl
	call	_putc_callee
	jr	l_drawCursor_00104
l_drawCursor_00102:
	ld	a,(_linePos)
	ld	hl,_lineOff
	add	a, (hl)
	ld	c,a
	ld	hl,_lineLength
	sub	a, (hl)
	jr	NC,l_drawCursor_00106
	ld	de,_inputBuf+0
	ld	l, c
	ld	h,0x00
	add	hl, de
	ld	c, (hl)
	ld	b,0x00
	jr	l_drawCursor_00107
l_drawCursor_00106:
	ld	bc,0x0020
l_drawCursor_00107:
	ld	hl, (_stdout)
	push	hl
	push	bc
	call	_putc_callee
l_drawCursor_00104:
	ret
	SECTION code_compiler
;	---------------------------------
; Function addChar
; ---------------------------------
_addChar:
	call	___sdcc_enter_ix
	push	af
	ld	a,(_lineOff)
	ld	hl,_linePos
	add	a, (hl)
	ld	c,a
	sub	a,0xff
	jr	NC,l_addChar_00105
	ld	a,(_lineLength)
	cp	a,c
	jr	Z,l_addChar_00102
	ld	b,0x00
	ld	e, c
	ld	d,0x00
	sub	a, e
	ld	(ix-2),a
	ld	a, b
	sbc	a, d
	ld	(ix-1),a
	ld	hl,_inputBuf
	ld	b,0x00
	add	hl, bc
	inc	de
	ld	a, e
	add	a, +((_inputBuf) & 0xFF)
	ld	e, a
	ld	a, d
	adc	a, +((_inputBuf) / 256)
	ld	d, a
	push	bc
	push	hl
	ld	l,(ix-2)
	ld	h,(ix-1)
	ex	(sp), hl
	push	hl
	push	de
	call	_memmove_callee
	pop	bc
l_addChar_00102:
	ld	a, +((_inputBuf) & 0xFF)
	add	a, c
	ld	c, a
	ld	a, +((_inputBuf) / 256)
	adc	a,0x00
	ld	b, a
	ld	a,(ix+4)
	ld	(bc), a
	ld	hl,_lineLength
	inc	(hl)
	call	_moveCursorRight
l_addChar_00105:
	pop	af
	pop	ix
	ret
	SECTION code_compiler
;	---------------------------------
; Function input
; ---------------------------------
_input:
	ld	hl,_lineOff
	ld	(hl),0x00
	ld	hl,_linePos
	ld	(hl),0x00
	ld	hl,_lineLength
	ld	(hl),0x00
l_input_00139:
	ld	de,0x1801
	push	de
	call	_gotoxy
	pop	af
	ld	hl,_lineOff
	ld	e, (hl)
	ld	c,0x00
l_input_00132:
	ld	a, e
	ld	hl,_lineLength
	sub	a, (hl)
	jr	NC,l_input_00147
	ld	a, c
	sub	a,0x40
	jr	NC,l_input_00147
	ld	hl,_inputBuf
	ld	d,0x00
	add	hl, de
	inc	e
	ld	b, (hl)
	ld	d,0x00
	push	bc
	push	de
	ld	hl, (_stdout)
	push	hl
	ld	e,b
	push	de
	call	_putc_callee
	pop	de
	pop	bc
	inc	c
	jr	l_input_00132
l_input_00147:
l_input_00135:
	ld	a, c
	sub	a,0x40
	jr	NC,l_input_00137
	push	bc
	ld	hl, (_stdout)
	push	hl
	ld	hl,0x0020
	push	hl
	call	_putc_callee
	pop	bc
	inc	c
	jr	l_input_00135
l_input_00137:
	call	_drawCursor
	call	_readKey
	ld	b, l
	ld	a, b
	or	a, a
	jr	Z,l_input_00107
l_input_00103:
	ld	a, +((_port00FE) / 256)
	in	a, (((_port00FE) & 0xFF))
	and	a,0x1f
	ld	c, a
	ld	e,0x00
	ld	a, c
	sub	a,0x1f
	or	a, e
	jr	Z,l_input_00108
	halt
	ld	hl,_blink
	inc	(hl)
	push	bc
	call	_drawCursor
	pop	bc
	jr	l_input_00103
l_input_00107:
	halt
	ld	hl,_blink
	inc	(hl)
	call	_drawCursor
	jr	l_input_00137
l_input_00108:
	ld	a, b
	sub	a,0x13
	jr	Z,l_input_00109
	ld	a,(_lineOff)
	ld	hl,_linePos
	add	a, (hl)
	ld	c, a
	ld	a,b
	cp	a,0x81
	jp	Z,l_input_00122
	cp	a,0x82
	jr	Z,l_input_00116
	cp	a,0x83
	jp	Z,l_input_00119
	cp	a,0x84
	jp	Z,l_input_00139
	cp	a,0x85
	jp	Z,l_input_00139
	cp	a,0x86
	jr	Z,l_input_00113
	cp	a,0x87
	jr	Z,l_input_00114
	cp	a,0x88
	jr	Z,l_input_00115
	sub	a,0x89
	jr	Z,l_input_00110
	jp	l_input_00127
l_input_00109:
	ld	a, +((_inputBuf) & 0xFF)
	ld	hl,_lineLength
	add	a, (hl)
	ld	c, a
	ld	a, +((_inputBuf) / 256)
	adc	a,0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
	ld	hl,_inputBuf
	push	hl
	call	_setLine
	pop	af
	jp	l_input_00141
l_input_00110:
	jp	l_input_00141
l_input_00113:
	ld	a,0x3c
	push	af
	inc	sp
	call	_addChar
	inc	sp
	ld	a,0x3d
	push	af
	inc	sp
	call	_addChar
	inc	sp
	jp	l_input_00139
l_input_00114:
	ld	a,0x3e
	push	af
	inc	sp
	call	_addChar
	inc	sp
	ld	a,0x3d
	push	af
	inc	sp
	call	_addChar
	inc	sp
	jp	l_input_00139
l_input_00115:
	ld	a,0x3c
	push	af
	inc	sp
	call	_addChar
	inc	sp
	ld	a,0x3e
	push	af
	inc	sp
	call	_addChar
	inc	sp
	jp	l_input_00139
l_input_00116:
	ld	a, c
	or	a, a
	jp	Z, l_input_00139
	call	_moveCursorLeft
	jp	l_input_00139
l_input_00119:
	ld	a, c
	ld	hl,_lineLength
	sub	a, (hl)
	jp	NC, l_input_00139
	call	_moveCursorRight
	jp	l_input_00139
l_input_00122:
	ld	a, c
	or	a, a
	jp	Z, l_input_00139
	ld	a,(_lineLength)
	sub	a, c
	jr	Z,l_input_00124
	ld	a,(_lineLength)
	ld	b,0x00
	ld	l, c
	ld	h,0x00
	sub	a, l
	ld	e, a
	ld	a, b
	sbc	a, h
	ld	d, a
	dec	de
	inc	hl
	push	de
	ld	de,_inputBuf
	add	hl, de
	pop	de
	ld	a, +((_inputBuf) & 0xFF)
	add	a, c
	ld	c, a
	ld	a, +((_inputBuf) / 256)
	adc	a,0x00
	ld	b, a
	push	de
	push	hl
	push	bc
	call	_memmove_callee
l_input_00124:
	ld	hl,_lineLength
	dec	(hl)
	call	_moveCursorLeft
	jp	l_input_00139
l_input_00127:
	push	bc
	inc	sp
	call	_addChar
	inc	sp
	jp	l_input_00139
l_input_00141:
	ret
	SECTION code_compiler
;	---------------------------------
; Function readKey
; ---------------------------------
_readKey:
	call	___sdcc_enter_ix
	ld	hl, -58
	add	hl, sp
	ld	sp, hl
	ld	a, +((_portFEFE) / 256)
	in	a, (((_portFEFE) & 0xFF))
	cpl
	ld	(ix-58),a
	ld	a, +((_portFDFE) / 256)
	in	a, (((_portFDFE) & 0xFF))
	cpl
	ld	(ix-57),a
	ld	a, +((_portFBFE) / 256)
	in	a, (((_portFBFE) & 0xFF))
	cpl
	ld	e, a
	ld	a, +((_portF7FE) / 256)
	in	a, (((_portF7FE) & 0xFF))
	cpl
	ld	c, a
	ld	a, +((_portEFFE) / 256)
	in	a, (((_portEFFE) & 0xFF))
	cpl
	ld	(ix-1),a
	ld	a, +((_portDFFE) / 256)
	in	a, (((_portDFFE) & 0xFF))
	cpl
	ld	(ix-56),a
	ld	a, +((_portBFFE) / 256)
	in	a, (((_portBFFE) & 0xFF))
	cpl
	ld	(ix-55),a
	ld	a, +((_port7FFE) / 256)
	in	a, (((_port7FFE) & 0xFF))
	cpl
	ld	(ix-54),a
	ld	a,(_capsLock)
	or	a, a
	jr	NZ,l_readKey_00238
	bit	0,(ix-58)
	jr	NZ,l_readKey_00238
	xor	a, a
	jr	l_readKey_00239
l_readKey_00238:
	ld	a,0x01
l_readKey_00239:
	ld	(ix-53),a
	ld	a,(ix-58)
	and	a,0x02
	ld	(ix-52),a
	xor	a, a
	ld	(ix-51),a
	ld	a,(ix-58)
	and	a,0x08
	ld	(ix-50),a
	xor	a, a
	ld	(ix-49),a
	ld	a,(ix-58)
	and	a,0x10
	ld	(ix-48),a
	xor	a, a
	ld	(ix-47),a
	ld	a, e
	and	a,0x01
	ld	(ix-46),a
	xor	a, a
	ld	(ix-45),a
	ld	a, e
	and	a,0x02
	ld	(ix-44),a
	xor	a, a
	ld	(ix-43),a
	ld	a, e
	and	a,0x04
	ld	(ix-42),a
	xor	a, a
	ld	(ix-41),a
	ld	a, e
	and	a,0x08
	ld	(ix-40),a
	xor	a, a
	ld	(ix-39),a
	ld	a, e
	and	a,0x10
	ld	(ix-38),a
	xor	a, a
	ld	(ix-37),a
	ld	a, c
	and	a,0x01
	ld	(ix-36),a
	xor	a, a
	ld	(ix-35),a
	ld	a, c
	and	a,0x02
	ld	(ix-34),a
	xor	a, a
	ld	(ix-33),a
	ld	a, c
	and	a,0x04
	ld	(ix-32),a
	xor	a, a
	ld	(ix-31),a
	ld	a, c
	and	a,0x08
	ld	(ix-30),a
	xor	a, a
	ld	(ix-29),a
	ld	a, c
	and	a,0x10
	ld	(ix-28),a
	xor	a, a
	ld	(ix-27),a
	ld	a,(ix-1)
	and	a,0x01
	ld	(ix-26),a
	xor	a, a
	ld	(ix-25),a
	ld	a,(ix-1)
	and	a,0x02
	ld	(ix-24),a
	xor	a, a
	ld	(ix-23),a
	ld	a,(ix-1)
	and	a,0x04
	ld	(ix-22),a
	xor	a, a
	ld	(ix-21),a
	ld	a,(ix-1)
	and	a,0x08
	ld	(ix-20),a
	xor	a, a
	ld	(ix-19),a
	ld	a,(ix-1)
	and	a,0x10
	ld	(ix-18),a
	xor	a, a
	ld	(ix-17),a
	ld	a,(ix-56)
	and	a,0x01
	ld	(ix-16),a
	xor	a, a
	ld	(ix-15),a
	ld	a,(ix-56)
	and	a,0x02
	ld	(ix-14),a
	xor	a, a
	ld	(ix-13),a
	ld	a,(ix-55)
	and	a,0x02
	ld	(ix-12),a
	xor	a, a
	ld	(ix-11),a
	ld	a,(ix-55)
	and	a,0x04
	ld	(ix-10),a
	xor	a, a
	ld	(ix-9),a
	ld	a,(ix-55)
	and	a,0x08
	ld	(ix-8),a
	xor	a, a
	ld	(ix-7),a
	ld	a,(ix-54)
	and	a,0x04
	ld	(ix-6),a
	xor	a, a
	ld	(ix-5),a
	ld	a,(ix-54)
	and	a,0x08
	ld	(ix-4),a
	xor	a, a
	ld	(ix-3),a
	ld	a,(ix-54)
	and	a,0x10
	ld	(ix-2),a
	xor	a, a
	ld	(ix-1),a
	bit	1,(ix-54)
	jp	NZ,l_readKey_00233
	ld	a,(ix-51)
	or	a,(ix-52)
	jr	Z,l_readKey_00102
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00240
	ld	hl,0x005a
	jr	l_readKey_00241
l_readKey_00240:
	ld	hl,0x007a
l_readKey_00241:
	jp	l_readKey_00235
l_readKey_00102:
	bit	2,(ix-58)
	jr	Z,l_readKey_00104
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00242
	ld	hl,0x0058
	jr	l_readKey_00243
l_readKey_00242:
	ld	hl,0x0078
l_readKey_00243:
	jp	l_readKey_00235
l_readKey_00104:
	ld	a,(ix-49)
	or	a,(ix-50)
	jr	Z,l_readKey_00106
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00244
	ld	(ix-2),0x43
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00245
l_readKey_00244:
	ld	(ix-2),0x63
	xor	a, a
	ld	(ix-1),a
l_readKey_00245:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00106:
	ld	a,(ix-47)
	or	a,(ix-48)
	jr	Z,l_readKey_00108
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00246
	ld	(ix-2),0x56
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00247
l_readKey_00246:
	ld	(ix-2),0x76
	xor	a, a
	ld	(ix-1),a
l_readKey_00247:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00108:
	bit	0,(ix-57)
	jr	Z,l_readKey_00110
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00248
	ld	(ix-2),0x41
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00249
l_readKey_00248:
	ld	(ix-2),0x61
	xor	a, a
	ld	(ix-1),a
l_readKey_00249:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00110:
	bit	1,(ix-57)
	jr	Z,l_readKey_00112
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00250
	ld	(ix-2),0x53
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00251
l_readKey_00250:
	ld	(ix-2),0x73
	xor	a, a
	ld	(ix-1),a
l_readKey_00251:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00112:
	bit	2,(ix-57)
	jr	Z,l_readKey_00114
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00252
	ld	(ix-2),0x44
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00253
l_readKey_00252:
	ld	(ix-2),0x64
	xor	a, a
	ld	(ix-1),a
l_readKey_00253:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00114:
	bit	3,(ix-57)
	jr	Z,l_readKey_00116
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00254
	ld	(ix-2),0x46
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00255
l_readKey_00254:
	ld	(ix-2),0x66
	xor	a, a
	ld	(ix-1),a
l_readKey_00255:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00116:
	bit	4,(ix-57)
	jr	Z,l_readKey_00118
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00256
	ld	(ix-2),0x47
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00257
l_readKey_00256:
	ld	(ix-2),0x67
	xor	a, a
	ld	(ix-1),a
l_readKey_00257:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00118:
	ld	a,(ix-45)
	or	a,(ix-46)
	jr	Z,l_readKey_00120
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00258
	ld	(ix-2),0x51
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00259
l_readKey_00258:
	ld	(ix-2),0x71
	xor	a, a
	ld	(ix-1),a
l_readKey_00259:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00120:
	ld	a,(ix-43)
	or	a,(ix-44)
	jr	Z,l_readKey_00122
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00260
	ld	(ix-2),0x57
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00261
l_readKey_00260:
	ld	(ix-2),0x77
	xor	a, a
	ld	(ix-1),a
l_readKey_00261:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00122:
	ld	a,(ix-41)
	or	a,(ix-42)
	jr	Z,l_readKey_00124
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00262
	ld	(ix-2),0x45
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00263
l_readKey_00262:
	ld	(ix-2),0x65
	xor	a, a
	ld	(ix-1),a
l_readKey_00263:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00124:
	ld	a,(ix-39)
	or	a,(ix-40)
	jr	Z,l_readKey_00126
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00264
	ld	(ix-2),0x52
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00265
l_readKey_00264:
	ld	(ix-2),0x72
	xor	a, a
	ld	(ix-1),a
l_readKey_00265:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00126:
	ld	a,(ix-37)
	or	a,(ix-38)
	jr	Z,l_readKey_00128
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00266
	ld	(ix-2),0x54
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00267
l_readKey_00266:
	ld	(ix-2),0x74
	xor	a, a
	ld	(ix-1),a
l_readKey_00267:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00128:
	ld	a,(ix-35)
	or	a,(ix-36)
	jr	Z,l_readKey_00130
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00268
	ld	(ix-2),0x80
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00269
l_readKey_00268:
	ld	(ix-2),0x31
	xor	a, a
	ld	(ix-1),a
l_readKey_00269:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00130:
	ld	a,(ix-33)
	or	a,(ix-34)
	jr	Z,l_readKey_00135
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00132
	ld	hl,_capsLock
	ld	a, (hl)
	sub	a,0x01
	ld	a,0x00
	rla
	ld	(hl), a
	jr	l_readKey_00135
l_readKey_00132:
	ld	l,0x32
	jp	l_readKey_00235
l_readKey_00135:
	ld	a,(ix-31)
	or	a,(ix-32)
	jr	Z,l_readKey_00137
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00270
	xor	a, a
	ld	(ix-2),a
	ld	(ix-1),a
	jr	l_readKey_00271
l_readKey_00270:
	ld	(ix-2),0x33
	xor	a, a
	ld	(ix-1),a
l_readKey_00271:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00137:
	ld	a,(ix-29)
	or	a,(ix-30)
	jr	Z,l_readKey_00139
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00272
	xor	a, a
	ld	(ix-2),a
	ld	(ix-1),a
	jr	l_readKey_00273
l_readKey_00272:
	ld	(ix-2),0x34
	xor	a, a
	ld	(ix-1),a
l_readKey_00273:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00139:
	ld	a,(ix-27)
	or	a,(ix-28)
	jr	Z,l_readKey_00141
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00274
	ld	(ix-2),0x82
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00275
l_readKey_00274:
	ld	(ix-2),0x35
	xor	a, a
	ld	(ix-1),a
l_readKey_00275:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00141:
	ld	a,(ix-25)
	or	a,(ix-26)
	jr	Z,l_readKey_00143
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00276
	ld	(ix-2),0x81
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00277
l_readKey_00276:
	ld	(ix-2),0x30
	xor	a, a
	ld	(ix-1),a
l_readKey_00277:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00143:
	ld	a,(ix-23)
	or	a,(ix-24)
	jr	Z,l_readKey_00145
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00278
	xor	a, a
	ld	(ix-2),a
	ld	(ix-1),a
	jr	l_readKey_00279
l_readKey_00278:
	ld	(ix-2),0x39
	xor	a, a
	ld	(ix-1),a
l_readKey_00279:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00145:
	ld	a,(ix-21)
	or	a,(ix-22)
	jr	Z,l_readKey_00147
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00280
	ld	(ix-2),0x83
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00281
l_readKey_00280:
	ld	(ix-2),0x38
	xor	a, a
	ld	(ix-1),a
l_readKey_00281:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00147:
	ld	a,(ix-19)
	or	a,(ix-20)
	jr	Z,l_readKey_00149
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00282
	ld	(ix-2),0x84
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00283
l_readKey_00282:
	ld	(ix-2),0x37
	xor	a, a
	ld	(ix-1),a
l_readKey_00283:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00149:
	ld	a,(ix-17)
	or	a,(ix-18)
	jr	Z,l_readKey_00151
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00284
	ld	(ix-2),0x85
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00285
l_readKey_00284:
	ld	(ix-2),0x36
	xor	a, a
	ld	(ix-1),a
l_readKey_00285:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00151:
	ld	a,(ix-15)
	or	a,(ix-16)
	jr	Z,l_readKey_00153
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00286
	ld	(ix-2),0x50
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00287
l_readKey_00286:
	ld	(ix-2),0x70
	xor	a, a
	ld	(ix-1),a
l_readKey_00287:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00153:
	ld	a,(ix-13)
	or	a,(ix-14)
	jr	Z,l_readKey_00155
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00288
	ld	(ix-2),0x4f
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00289
l_readKey_00288:
	ld	(ix-2),0x6f
	xor	a, a
	ld	(ix-1),a
l_readKey_00289:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00155:
	bit	2,(ix-56)
	jr	Z,l_readKey_00157
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00290
	ld	(ix-2),0x49
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00291
l_readKey_00290:
	ld	(ix-2),0x69
	xor	a, a
	ld	(ix-1),a
l_readKey_00291:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00157:
	bit	3,(ix-56)
	jr	Z,l_readKey_00159
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00292
	ld	(ix-2),0x55
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00293
l_readKey_00292:
	ld	(ix-2),0x75
	xor	a, a
	ld	(ix-1),a
l_readKey_00293:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00159:
	bit	4,(ix-56)
	jr	Z,l_readKey_00161
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00294
	ld	(ix-2),0x59
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00295
l_readKey_00294:
	ld	(ix-2),0x79
	xor	a, a
	ld	(ix-1),a
l_readKey_00295:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00161:
	bit	0,(ix-55)
	jr	Z,l_readKey_00163
	ld	l,0x13
	jp	l_readKey_00235
l_readKey_00163:
	ld	a,(ix-11)
	or	a,(ix-12)
	jr	Z,l_readKey_00165
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00296
	ld	(ix-2),0x4c
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00297
l_readKey_00296:
	ld	(ix-2),0x6c
	xor	a, a
	ld	(ix-1),a
l_readKey_00297:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00165:
	ld	a,(ix-9)
	or	a,(ix-10)
	jr	Z,l_readKey_00167
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00298
	ld	(ix-2),0x4b
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00299
l_readKey_00298:
	ld	(ix-2),0x6b
	xor	a, a
	ld	(ix-1),a
l_readKey_00299:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00167:
	ld	a,(ix-7)
	or	a,(ix-8)
	jr	Z,l_readKey_00169
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00300
	ld	(ix-2),0x4a
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00301
l_readKey_00300:
	ld	(ix-2),0x6a
	xor	a, a
	ld	(ix-1),a
l_readKey_00301:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00169:
	bit	4,(ix-55)
	jr	Z,l_readKey_00171
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00302
	ld	(ix-2),0x48
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00303
l_readKey_00302:
	ld	(ix-2),0x68
	xor	a, a
	ld	(ix-1),a
l_readKey_00303:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00171:
	bit	0,(ix-54)
	jr	Z,l_readKey_00173
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00304
	ld	(ix-2),0x89
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00305
l_readKey_00304:
	ld	(ix-2),0x20
	xor	a, a
	ld	(ix-1),a
l_readKey_00305:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00173:
	ld	a,(ix-5)
	or	a,(ix-6)
	jr	Z,l_readKey_00175
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00306
	ld	(ix-2),0x4d
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00307
l_readKey_00306:
	ld	(ix-2),0x6d
	xor	a, a
	ld	(ix-1),a
l_readKey_00307:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00175:
	ld	a,(ix-3)
	or	a,(ix-4)
	jr	Z,l_readKey_00177
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00308
	ld	(ix-2),0x4e
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00309
l_readKey_00308:
	ld	(ix-2),0x6e
	xor	a, a
	ld	(ix-1),a
l_readKey_00309:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00177:
	ld	a,(ix-1)
	or	a,(ix-2)
	jp	Z, l_readKey_00234
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00310
	ld	(ix-2),0x42
	xor	a, a
	ld	(ix-1),a
	jr	l_readKey_00311
l_readKey_00310:
	ld	(ix-2),0x62
	xor	a, a
	ld	(ix-1),a
l_readKey_00311:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00233:
	ld	a,(ix-51)
	or	a,(ix-52)
	jr	Z,l_readKey_00181
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00312
	ld	hl,0x0000
	jr	l_readKey_00313
l_readKey_00312:
	ld	hl,0x003a
l_readKey_00313:
	jp	l_readKey_00235
l_readKey_00181:
	ld	a,(ix-49)
	or	a,(ix-50)
	jr	Z,l_readKey_00183
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00314
	xor	a, a
	ld	(ix-2),a
	ld	(ix-1),a
	jr	l_readKey_00315
l_readKey_00314:
	ld	(ix-2),0x3f
	xor	a, a
	ld	(ix-1),a
l_readKey_00315:
	ld	l,(ix-2)
	jp	l_readKey_00235
l_readKey_00183:
	ld	a,(ix-47)
	or	a,(ix-48)
	jr	Z,l_readKey_00185
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00316
	ld	hl,0x0000
	jr	l_readKey_00317
l_readKey_00316:
	ld	hl,0x002f
l_readKey_00317:
	jp	l_readKey_00235
l_readKey_00185:
	ld	a,(ix-45)
	or	a,(ix-46)
	jr	Z,l_readKey_00187
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00318
	ld	hl,0x0000
	jr	l_readKey_00319
l_readKey_00318:
	ld	hl,0x0086
l_readKey_00319:
	jp	l_readKey_00235
l_readKey_00187:
	ld	a,(ix-43)
	or	a,(ix-44)
	jr	Z,l_readKey_00189
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00320
	ld	hl,0x0000
	jr	l_readKey_00321
l_readKey_00320:
	ld	hl,0x0088
l_readKey_00321:
	jp	l_readKey_00235
l_readKey_00189:
	ld	a,(ix-41)
	or	a,(ix-42)
	jr	Z,l_readKey_00191
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00322
	ld	hl,0x0000
	jr	l_readKey_00323
l_readKey_00322:
	ld	hl,0x0087
l_readKey_00323:
	jp	l_readKey_00235
l_readKey_00191:
	ld	a,(ix-39)
	or	a,(ix-40)
	jr	Z,l_readKey_00193
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00324
	ld	hl,0x0000
	jr	l_readKey_00325
l_readKey_00324:
	ld	hl,0x003c
l_readKey_00325:
	jp	l_readKey_00235
l_readKey_00193:
	ld	a,(ix-37)
	or	a,(ix-38)
	jr	Z,l_readKey_00195
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00326
	ld	hl,0x0000
	jr	l_readKey_00327
l_readKey_00326:
	ld	hl,0x003e
l_readKey_00327:
	jp	l_readKey_00235
l_readKey_00195:
	ld	a,(ix-35)
	or	a,(ix-36)
	jr	Z,l_readKey_00197
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00328
	ld	hl,0x0000
	jr	l_readKey_00329
l_readKey_00328:
	ld	hl,0x0021
l_readKey_00329:
	jp	l_readKey_00235
l_readKey_00197:
	ld	a,(ix-33)
	or	a,(ix-34)
	jr	Z,l_readKey_00199
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00330
	ld	hl,0x0000
	jr	l_readKey_00331
l_readKey_00330:
	ld	hl,0x0040
l_readKey_00331:
	jp	l_readKey_00235
l_readKey_00199:
	ld	a,(ix-31)
	or	a,(ix-32)
	jr	Z,l_readKey_00201
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00332
	ld	hl,0x0000
	jr	l_readKey_00333
l_readKey_00332:
	ld	hl,0x0023
l_readKey_00333:
	jp	l_readKey_00235
l_readKey_00201:
	ld	a,(ix-29)
	or	a,(ix-30)
	jr	Z,l_readKey_00203
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00334
	ld	hl,0x0000
	jr	l_readKey_00335
l_readKey_00334:
	ld	hl,0x0024
l_readKey_00335:
	jp	l_readKey_00235
l_readKey_00203:
	ld	a,(ix-27)
	or	a,(ix-28)
	jr	Z,l_readKey_00205
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00336
	ld	hl,0x0000
	jr	l_readKey_00337
l_readKey_00336:
	ld	hl,0x0025
l_readKey_00337:
	jp	l_readKey_00235
l_readKey_00205:
	ld	a,(ix-25)
	or	a,(ix-26)
	jr	Z,l_readKey_00207
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00338
	ld	hl,0x0000
	jr	l_readKey_00339
l_readKey_00338:
	ld	hl,0x005f
l_readKey_00339:
	jp	l_readKey_00235
l_readKey_00207:
	ld	a,(ix-23)
	or	a,(ix-24)
	jr	Z,l_readKey_00209
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00340
	ld	hl,0x0000
	jr	l_readKey_00341
l_readKey_00340:
	ld	hl,0x0029
l_readKey_00341:
	jp	l_readKey_00235
l_readKey_00209:
	ld	a,(ix-21)
	or	a,(ix-22)
	jr	Z,l_readKey_00211
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00342
	ld	hl,0x0000
	jr	l_readKey_00343
l_readKey_00342:
	ld	hl,0x0028
l_readKey_00343:
	jp	l_readKey_00235
l_readKey_00211:
	ld	a,(ix-19)
	or	a,(ix-20)
	jr	Z,l_readKey_00213
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00344
	ld	hl,0x0000
	jr	l_readKey_00345
l_readKey_00344:
	ld	hl,0x002c
l_readKey_00345:
	jp	l_readKey_00235
l_readKey_00213:
	ld	a,(ix-17)
	or	a,(ix-18)
	jr	Z,l_readKey_00215
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00346
	ld	hl,0x0000
	jr	l_readKey_00347
l_readKey_00346:
	ld	hl,0x0026
l_readKey_00347:
	jp	l_readKey_00235
l_readKey_00215:
	ld	a,(ix-15)
	or	a,(ix-16)
	jr	Z,l_readKey_00217
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00348
	ld	hl,0x0000
	jr	l_readKey_00349
l_readKey_00348:
	ld	hl,0x0022
l_readKey_00349:
	jp	l_readKey_00235
l_readKey_00217:
	ld	a,(ix-13)
	or	a,(ix-14)
	jr	Z,l_readKey_00219
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00350
	ld	hl,0x0000
	jr	l_readKey_00351
l_readKey_00350:
	ld	hl,0x003b
l_readKey_00351:
	jp	l_readKey_00235
l_readKey_00219:
	ld	a,(ix-11)
	or	a,(ix-12)
	jr	Z,l_readKey_00221
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00352
	ld	hl,0x0000
	jr	l_readKey_00353
l_readKey_00352:
	ld	hl,0x003d
l_readKey_00353:
	jp	l_readKey_00235
l_readKey_00221:
	ld	a,(ix-9)
	or	a,(ix-10)
	jr	Z,l_readKey_00223
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00354
	ld	hl,0x0000
	jr	l_readKey_00355
l_readKey_00354:
	ld	hl,0x002b
l_readKey_00355:
	jr	l_readKey_00235
l_readKey_00223:
	ld	a,(ix-7)
	or	a,(ix-8)
	jr	Z,l_readKey_00225
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00356
	ld	hl,0x0000
	jr	l_readKey_00357
l_readKey_00356:
	ld	hl,0x002d
l_readKey_00357:
	jr	l_readKey_00235
l_readKey_00225:
	ld	a,(ix-5)
	or	a,(ix-6)
	jr	Z,l_readKey_00227
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00358
	ld	hl,0x0000
	jr	l_readKey_00359
l_readKey_00358:
	ld	hl,0x002e
l_readKey_00359:
	jr	l_readKey_00235
l_readKey_00227:
	ld	a,(ix-3)
	or	a,(ix-4)
	jr	Z,l_readKey_00229
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00360
	ld	hl,0x0000
	jr	l_readKey_00361
l_readKey_00360:
	ld	hl,0x002c
l_readKey_00361:
	jr	l_readKey_00235
l_readKey_00229:
	ld	a,(ix-1)
	or	a,(ix-2)
	jr	Z,l_readKey_00234
	ld	a,(ix-53)
	or	a, a
	jr	Z,l_readKey_00362
	ld	hl,0x0000
	jr	l_readKey_00363
l_readKey_00362:
	ld	hl,0x002a
l_readKey_00363:
	jr	l_readKey_00235
l_readKey_00234:
	ld	l,0x00
l_readKey_00235:
	ld	sp, ix
	pop	ix
	ret
	SECTION data_compiler
_inputBuf:
	DEFB +0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
	DEFB 0x00
_capsLock:
	DEFB +0x00
_blink:
	DEFB +0x00
	SECTION IGNORE
