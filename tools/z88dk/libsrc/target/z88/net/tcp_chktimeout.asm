;
;	This file is automatically generated
;
;	Do not edit!!!
;
;	djm 12/2/2000
;
;	ZSock Lib function: tcp_chktimeout

        SECTION code_clib
	PUBLIC	tcp_chktimeout
	PUBLIC	_tcp_chktimeout

	EXTERN	no_zsock

	INCLUDE	"packages.def"
	INCLUDE	"zsock.def"

.tcp_chktimeout
._tcp_chktimeout
	ld	a,r_tcp_chktimeout
	call_pkg(tcp_all)
	ret	nc
; We failed..are we installed?
	cp	rc_pnf
	scf		;signal error
	ret	nz	;Internal error
	call_pkg(tcp_ayt)
	jr	nc,tcp_chktimeout
	jp	no_zsock
