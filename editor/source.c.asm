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
	GLOBAL _findLine
	GLOBAL _lineCount
	GLOBAL _lineDataEnd
	GLOBAL _lineData
	GLOBAL _lines
	GLOBAL _extractLineNumber
	GLOBAL _setLine
	GLOBAL _initLines
;--------------------------------------------------------
; Externals used
;--------------------------------------------------------
	GLOBAL _readKey
	GLOBAL _input
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
	GLOBAL _stderr
	GLOBAL _stdout
	GLOBAL _stdin
	GLOBAL __MAX_FOPEN
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	SECTION bss_compiler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	
IF 0
	
; .area _INITIALIZED removed by z88dk
	
_lines:
	DEFS 2
_lineData:
	DEFS 2
_lineDataEnd:
	DEFS 2
_lineCount:
	DEFS 2
	
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
; Function insertLineData
; ---------------------------------
_insertLineData:
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
	ld	l,(ix+6)
	ld	h,(ix+7)
	call	_strlen_fastcall
	ex	de, hl
	inc	sp
	inc	sp
	push	de
	ld	bc, (_lineData)
	ld	hl,_lineData
	ld	a, (hl)
	sub	a,(ix-8)
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	sbc	a,(ix-7)
	ld	(hl), a
	ld	a,(ix+4)
	ld	(ix-6),a
	ld	a,(ix+5)
	ld	(ix-5),a
	ld	a,(ix-6)
	add	a,0x02
	ld	(ix-4),a
	ld	a,(ix-5)
	adc	a,0x00
	ld	(ix-3),a
	ld	a,(ix+4)
	ld	hl,_lines
	sub	a, (hl)
	jr	NZ,l_insertLineData_00103
	ld	a,(ix+5)
	inc	hl
	sub	a, (hl)
	jr	NZ,l_insertLineData_00103
	ld	e,(ix-4)
	ld	d,(ix-3)
	ld	hl,_lineData
	ld	a, (hl)
	ld	(de), a
	inc	de
	inc	hl
	ld	a, (hl)
	ld	(de), a
	jr	l_insertLineData_00104
l_insertLineData_00103:
	ld	a,(ix+4)
	add	a,0x04
	ld	l, a
	ld	a,(ix+5)
	adc	a,0x00
	ld	h, a
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	hl,_lineData
	sub	a, (hl)
	ld	(ix-2),a
	ld	a, d
	inc	hl
	sbc	a, (hl)
	ld	(ix-1),a
	ld	de, (_lineData)
	ld	l,(ix-2)
	ld	h,(ix-1)
	push	hl
	push	bc
	push	de
	call	_memmove_callee
	ld	bc, (_lines)
l_insertLineData_00106:
	ld	l,(ix+4)
	ld	h,(ix+5)
	cp	a, a
	sbc	hl, bc
	jr	Z,l_insertLineData_00101
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	e, (hl)
	dec	hl
	sub	a,(ix-8)
	ld	d, a
	ld	a, e
	sbc	a,(ix-7)
	ld	(hl), d
	inc	hl
	ld	(hl), a
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	jr	l_insertLineData_00106
l_insertLineData_00101:
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl,6
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a,(ix-8)
	ld	c, a
	ld	a, b
	sbc	a,(ix-7)
	ld	b, a
	ld	l,(ix-4)
	ld	h,(ix-3)
	ld	(hl), c
	inc	hl
	ld	(hl), b
l_insertLineData_00104:
	ld	l,(ix-4)
	ld	h,(ix-3)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	c,(ix+6)
	ld	b,(ix+7)
	pop	hl
	push	hl
;size	6
;size	5
;size	4
	ld	a, c
;size	3
	ld	c, l
;size	2
	ld	l, a
;size	2
	ld	a, b
;size	1
	ld	b, h
	ld	h, a
	ld	a, b
	or	a, c
	jr	Z,l_insertLineData_00129
	ldir
l_insertLineData_00129:
	ld	sp, ix
	pop	ix
	ret
	SECTION code_compiler
;	---------------------------------
; Function removeLineData
; ---------------------------------
_removeLineData:
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	ld	a,(ix+4)
	add	a,0x04
	ld	l, a
	ld	a,(ix+5)
	adc	a,0x00
	ld	h, a
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a,(ix+4)
	ld	(ix-6),a
	ld	a,(ix+5)
	ld	(ix-5),a
	pop	bc
	push	bc
	inc	bc
	inc	bc
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	(ix-4),e
	ld	(ix-3),a
	ld	de, (_lineData)
	ld	hl,_lineData
	ld	a, (hl)
	add	a,(ix-4)
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a,(ix-3)
	ld	(hl), a
	ld	hl,_lines
	ld	a, (hl)
	sub	a,(ix-6)
	jr	NZ,l_removeLineData_00125
	inc	hl
	ld	a, (hl)
	sub	a,(ix-5)
	jr	Z,l_removeLineData_00107
l_removeLineData_00125:
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, e
	ld	(ix-2),a
	ld	a, b
	sbc	a, d
	ld	(ix-1),a
	ld	bc, (_lineData)
	ld	l,(ix-2)
	ld	h,(ix-1)
	push	hl
	push	de
	push	bc
	call	_memmove_callee
	ld	bc, (_lines)
l_removeLineData_00105:
	pop	hl
	push	hl
	cp	a, a
	sbc	hl, bc
	jr	Z,l_removeLineData_00107
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	add	a,(ix-4)
	ld	e, a
	ld	a, d
	adc	a,(ix-3)
	ld	(hl), e
	inc	hl
	ld	(hl), a
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	jr	l_removeLineData_00105
l_removeLineData_00107:
	ld	sp, ix
	pop	ix
	ret
	SECTION code_compiler
;	---------------------------------
; Function extractLineNumber
; ---------------------------------
_extractLineNumber:
	call	___sdcc_enter_ix
	push	af
	push	af
	ld	a,(ix+4)
	ld	(ix-4),a
	ld	a,(ix+5)
	ld	(ix-3),a
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	xor	a, a
	ld	(ix-2),a
	ld	(ix-1),a
l_extractLineNumber_00102:
	ld	a, (bc)
	ld	e,a
	sub	a,0x30
	jr	C,l_extractLineNumber_00114
	ld	a,0x39
	sub	a, e
	jr	C,l_extractLineNumber_00114
	ld	l,(ix-2)
	ld	h,(ix-1)
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ld	a, e
	inc	bc
	ld	d,0x00
	add	a,0xd0
	ld	e, a
	ld	a, d
	adc	a,0xff
	ld	(ix-2),e
	ld	(ix-1),a
	ld	e,(ix-2)
	ld	d,(ix-1)
	add	hl, de
	ld	(ix-2),l
	ld	(ix-1),h
	jr	l_extractLineNumber_00102
l_extractLineNumber_00114:
l_extractLineNumber_00105:
	ld	a, (bc)
	sub	a,0x20
	jr	NZ,l_extractLineNumber_00107
	inc	bc
	jr	l_extractLineNumber_00105
l_extractLineNumber_00107:
	pop	hl
	push	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	sp, ix
	pop	ix
	ret
	SECTION code_compiler
;	---------------------------------
; Function findLine
; ---------------------------------
_findLine:
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	ld	hl,_lineCount + 1
	ld	a, (hl)
	dec	hl
	or	a, (hl)
	jr	NZ,l_findLine_00102
	ld	hl, (_lines)
	jp	l_findLine_00115
l_findLine_00102:
	ld	bc,0x0000
	ld	de, (_lineCount)
	dec	de
	inc	sp
	inc	sp
	push	de
l_findLine_00109:
	ld	a,(ix-6)
	sub	a, c
	ld	a,(ix-5)
	sbc	a, b
	jr	C,l_findLine_00111
	pop	hl
	push	hl
	add	hl, bc
	ex	de,hl
	srl	d
	rr	e
	ld	(ix-2),e
	ld	(ix-1),d
	ld	a,0x02
l_findLine_00152:
	sla	(ix-2)
	rl	(ix-1)
	dec	a
	jr	NZ,l_findLine_00152
	ld	hl,_lines
	ld	a, (hl)
	add	a,(ix-2)
	ld	(ix-4),a
	inc	hl
	ld	a, (hl)
	adc	a,(ix-1)
	ld	(ix-3),a
	ld	l,(ix-4)
	ld	h,(ix-3)
	ld	a, (hl)
	ld	(ix-2),a
	inc	hl
	ld	a, (hl)
	ld	(ix-1),a
	ld	a,(ix-2)
	sub	a,(ix+4)
	ld	a,(ix-1)
	sbc	a,(ix+5)
	jr	NC,l_findLine_00107
	ld	c, e
	ld	b, d
	inc	bc
	jr	l_findLine_00109
l_findLine_00107:
	ld	a,(ix+4)
	sub	a,(ix-2)
	ld	a,(ix+5)
	sbc	a,(ix-1)
	jr	NC,l_findLine_00104
	dec	de
	inc	sp
	inc	sp
	push	de
	jr	l_findLine_00109
l_findLine_00104:
	pop	bc
	pop	hl
	push	hl
	push	bc
	jr	l_findLine_00115
l_findLine_00111:
	ld	a, c
	ld	hl,_lineCount
	sub	a, (hl)
	ld	a, b
	inc	hl
	sbc	a, (hl)
	jr	NC,l_findLine_00113
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl,_lines
	ld	a, (hl)
	add	a, e
	ld	e, a
	inc	hl
	ld	a, (hl)
	adc	a, d
	ld	d, a
	ex	de,hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a,(ix+4)
	ld	a, d
	sbc	a,(ix+5)
	jr	NC,l_findLine_00113
	inc	bc
l_findLine_00113:
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,_lines
	ld	a, (hl)
	add	a, c
	ld	c, a
	inc	hl
	ld	a, (hl)
	adc	a, b
	ld	b, a
	ld	l, c
	ld	h, b
l_findLine_00115:
	ld	sp, ix
	pop	ix
	ret
	SECTION code_compiler
;	---------------------------------
; Function setLine
; ---------------------------------
_setLine:
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
	ld	hl,12
	add	hl, sp
	push	hl
	call	_extractLineNumber
	pop	af
	ex	de, hl
	inc	sp
	inc	sp
	push	de
	pop	hl
	push	hl
	push	hl
	call	_findLine
	pop	af
	ex	de, hl
	ld	(ix-6),e
	ld	(ix-5),d
	ld	a,(ix-6)
	ld	hl,_lines
	sub	a, (hl)
	ld	e, a
	ld	a,(ix-5)
	inc	hl
	sbc	a, (hl)
	ld	d, a
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l,(ix-6)
	ld	h,(ix-5)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, e
	ld	h, d
	ld	(ix-2),e
	ld	(ix-1),d
	ld	a,0x02
l_setLine_00139:
	sla	(ix-2)
	rl	(ix-1)
	dec	a
	jr	NZ,l_setLine_00139
	inc	hl
	add	hl, hl
	add	hl, hl
	ld	(ix-4),l
	ld	(ix-3),h
	pop	hl
	push	hl
	cp	a, a
	sbc	hl, bc
	jr	NZ,l_setLine_00110
	push	de
	ld	l,(ix-6)
	ld	h,(ix-5)
	push	hl
	call	_removeLineData
	pop	af
	pop	de
	ld	c,(ix+4)
	ld	b,(ix+5)
	ld	a, (bc)
	or	a, a
	jp	NZ, l_setLine_00111
	ld	a, e
	ld	hl,_lineCount
	sub	a, (hl)
	ld	a, d
	inc	hl
	sbc	a, (hl)
	jr	NC,l_setLine_00102
	dec	hl
	ld	a, (hl)
	sub	a, e
	ld	e, a
	inc	hl
	ld	a, (hl)
	sbc	a, d
	ld	d, a
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl,_lines
	ld	a, (hl)
	add	a,(ix-4)
	ld	c, a
	inc	hl
	ld	a, (hl)
	adc	a,(ix-3)
	ld	b, a
	dec	hl
	ld	a, (hl)
	add	a,(ix-2)
	ld	(ix-4),a
	inc	hl
	ld	a, (hl)
	adc	a,(ix-1)
	ld	(ix-3),a
	ld	l,(ix-4)
	ld	h,(ix-3)
	push	de
	push	bc
	push	hl
	call	_memmove_callee
l_setLine_00102:
	ld	hl,_lineCount
	ld	a, (hl)
	add	a,0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a,0xff
	ld	(hl), a
	jp	l_setLine_00112
l_setLine_00110:
	ld	c,(ix+4)
	ld	b,(ix+5)
	ld	a, (bc)
	or	a, a
	jp	Z,l_setLine_00112
	ld	a, e
	ld	hl,_lineCount
	sub	a, (hl)
	ld	a, d
	inc	hl
	sbc	a, (hl)
	jr	NC,l_setLine_00108
	dec	hl
	ld	a, (hl)
	sub	a, e
	ld	e, a
	inc	hl
	ld	a, (hl)
	sbc	a, d
	ld	d, a
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	hl,_lines
	ld	a, (hl)
	add	a,(ix-2)
	ld	c, a
	inc	hl
	ld	a, (hl)
	adc	a,(ix-1)
	ld	b, a
	dec	hl
	ld	a, (hl)
	add	a,(ix-4)
	ld	(ix-2),a
	inc	hl
	ld	a, (hl)
	adc	a,(ix-3)
	ld	(ix-1),a
	ld	l,(ix-2)
	ld	h,(ix-1)
	push	de
	push	bc
	push	hl
	call	_memmove_callee
l_setLine_00108:
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,(ix-8)
	ld	(hl), a
	inc	hl
	ld	a,(ix-7)
	ld	(hl), a
	ld	hl, (_lineCount)
	inc	hl
	ld	a, l
	ld	(_lineCount), a
	ld	a, h
	ld	(_lineCount + 1), a
	ld	hl, (_lineCount)
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl,_lines
	ld	a, (hl)
	add	a, e
	ld	c, a
	inc	hl
	ld	a, (hl)
	adc	a, d
	ld	b, a
	ld	a,0xff
	ld	(bc), a
	inc	bc
	ld	a,0xff
	ld	(bc), a
	ld	hl, (_lineCount)
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl,_lines
	ld	a, (hl)
	add	a, e
	ld	c, a
	inc	hl
	ld	a, (hl)
	adc	a, d
	ld	b, a
	inc	bc
	inc	bc
	ld	hl,_lineDataEnd
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a, (hl)
	ld	(bc), a
l_setLine_00111:
	ld	l,(ix+4)
	ld	h,(ix+5)
	push	hl
	ld	l,(ix-6)
	ld	h,(ix-5)
	push	hl
	call	_insertLineData
	pop	af
	pop	af
l_setLine_00112:
	ld	sp, ix
	pop	ix
	ret
	SECTION code_compiler
;	---------------------------------
; Function initLines
; ---------------------------------
_initLines:
	ld	bc, (_lines)
	ld	a,0xff
	ld	(bc), a
	inc	bc
	ld	a,0xff
	ld	(bc), a
	ld	bc, (_lines)
	inc	bc
	inc	bc
	ld	hl,_lineDataEnd
	ld	a, (hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a, (hl)
	ld	(bc), a
	ret
	SECTION data_compiler
_lines:
	DEFW +0xc000
_lineData:
	DEFW +0xffff
_lineDataEnd:
	DEFW +0xffff
_lineCount:
	DEFW +0x0000
	SECTION IGNORE
