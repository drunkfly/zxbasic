;
;	This file is automatically generated
;
;	Do not edit!!!
;
;	djm 12/2/2000
;
;	ZSock Lib function: getnetstat

        SECTION code_clib
	PUBLIC	getnetstat
	PUBLIC	_getnetstat

	EXTERN	no_zsock

	INCLUDE	"packages.def"
	INCLUDE	"zsock.def"

.getnetstat
._getnetstat
	ld	a,r_getnetstat
	call_pkg(tcp_all)
	ret	nc
; We failed..are we installed?
	cp	rc_pnf
	scf		;signal error
	ret	nz	;Internal error
	call_pkg(tcp_ayt)
	jr	nc,getnetstat
	jp	no_zsock
