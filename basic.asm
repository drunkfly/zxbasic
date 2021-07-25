
					device 		zxspectrum48

					org			8000h
stack_top:

start:				ld			sp, stack_top
					ld			hl, source
.loop:				call		execute_line
					jr			.loop

					; Input:
					;   HL => line
					; Output:
					;   HL => next line

execute_line:		call		read_number
					ld			(CurrentLine), ix
execute_subline:	call		read_whitespace
.nextcmd:			call		read_keyword
					call		call_ix
					dec			hl
					ld			a, (hl)
					inc			hl
					cp			':'
					ret			nz
					call		skip_whitespace
					jr			.nextcmd

call_ix:			jp			(ix)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"PRINT"
PRINT:				call		read_whitespace
.loop:				call		read_expression
					push		hl
					call		pop_value
					ld			a, (hl)
					cp			TYPE_NUMBER
					call		z, .print_number
					cp			TYPE_STRING
					call		z, .print_string
					cp			TYPE_CHAR
					call		z, .print_char
					pop			hl
					call		skip_whitespace
					ld			a, (hl)
					cp			','
					jr			nz, .end
					call		read_comma
					jr			.loop
.end:				call		check_eol
					push		hl
					ld			a, 13			; print new line
					rst			16
					pop			hl
					ret

.print_number:		inc			hl
					ld			a, (hl)
					inc			hl
					ld			h, (hl)
					ld			l, a
					call		WordToStr
					jp			0x203C			; ROM PRINT

.print_string:		inc			hl
					ld			e, (hl)
					inc			hl
					ld			d, (hl)
					inc			hl
					ld			c, (hl)
					inc			hl
					ld			b, (hl)
					jp			0x203C			; ROM PRINT

.print_char:		inc			hl
					ld			a, (hl)
					rst			16
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"LET"
LET:				call		read_whitespace
					call		read_variable
					push		ix
					call		skip_whitespace
					ld			a, (hl)
					cp			'='
					jp			nz, syntax_error
					inc			hl
					call		skip_whitespace
					call		read_expression_number
					pop			de
					ld			a, ixl
					ld			(de), a
					inc			de
					ld			a, ixh
					ld			(de), a
					jp			check_eol

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"CLS"
CLS:				call		check_eol
					push		hl
					call		0xDAF
					pop			hl
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"POKE"
POKE:				call		read_whitespace
					call		read_expression_number
					push		ix
					call		read_comma
					call		read_expression_number
					ld			e, ixl
					call		check_eol
					pop			ix
					ld			(ix), e
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"OUT"
OUT:				call		read_whitespace
					call		read_expression_number
					push		ix
					call		read_comma
					call		read_expression_number
					ld			e, ixl
					call		check_eol
					pop			bc
					out			(c), e
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"GOTO"
GOTO:				call		read_whitespace
					call		read_expression_number
					call		check_eol
					call		find_line
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"IF"
IF:					call		read_whitespace
					call		read_expression_number
					push		ix
					; expect 'THEN'
					call		read_keyword
					ld			a, ixl      
					cp			low THEN
					jp			nz, syntax_error
					ld			a, ixh
					cp			high THEN
					jp			nz, syntax_error
					;
					pop			ix
					ld			a, ixl
					or			a
					jp			nz, execute_subline
					cp			ixh
					jp			nz, execute_subline
.false:				; skip until EOL
					ld			a, (hl)
					inc			hl
					cp			':'
					ret			z
					cp			10
					jr			nz, .false
					ret

					db			"THEN"
THEN:				jp			syntax_error

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"PAUSE"
PAUSE:				call		read_whitespace
					call		read_expression_number
					push		ix
					call		check_eol
					pop			de
.loop:				ld			a, e
					or			a
					jr			nz, .cont
					cp			d
					ret			z
.cont:				halt
					dec			de
					jr			.loop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					; Input:
					;   HL = number
					; Output:
					;   DE => buffer
					;   BC = length

WordToStr:     		ld          de, .buffer
                	ld          bc, -10000
                	call        .l1
                	ld          bc, -1000
                	call        .l1
                	ld          bc, -100
                	call        .l1
                	ld          c, -10
                	call        .l1
                	ld          c, -1
                	call        .l1
                	ld          de, .buffer
                	ld			bc, 5
                	dup			4
	                ld          a, (de)
    	            cp          '0'
        	        ret         nz
            	    inc         de
            	    dec			bc
            	    edup
                	ret
.l1:           		ld          a, '0'-1
.l2:           		inc         a
                	add         hl, bc
                	jr          c, .l2
                	sbc         hl, bc
                	ld          (de), a
                	inc         de
                	ret
.buffer				db			'?????'

					include		"expr.asm"
					include		"func.asm"
					include		"parse.asm"
					include		"error.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CurrentLine			dw			0

STACK_SIZE = 20
NumberStackTop:		db			0
NumberStack:		defs		5 * STACK_SIZE	; 1 byte = tag (value type)
												; 4 byte = value
												;    number: 2b value
												;    string: 2b addr, 2b len
												;    char: 1b value

Variables:			defs		26 * 2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

source:				db			'10 CLS',10
					db			'20 LET X=1 : LET Y=1',10
					db			'30 LET A=1 : LET B=1',10
					db			'40 LET D=X : LET E=Y',10
					db			'50 LET X=X+A',10
					db			'60 IF X=30 THEN LET A=-1',10
					db			'70 IF X=1 THEN LET A=1',10
					db			'80 LET Y=Y+B',10
					db			'90 IF Y=20 THEN LET B=-1',10
					db			'100 IF Y=1 THEN LET B=1',10
					db			'110 PAUSE 1',10
					db			'120 PRINT CHR$(22),CHR$(E),CHR$(D)," "',10
					db			'130 PRINT CHR$(22),CHR$(Y),CHR$(X),"X"',10
					db			'140 GOTO 40',10


					db			'10 CLS',10
					db			'20 PRINT CHR$(22),CHR$(0),CHR$(0),IN 65278',10
					db			'30 PRINT IN 65022',10
					db			'40 PRINT IN 64510',10
					db			'50 PRINT IN 63486',10
					db			'60 PRINT IN 61438',10
					db			'70 PRINT IN 57342',10
					db			'80 PRINT IN 49150',10
					db			'90 PRINT IN 32766',10
					db			'100 GOTO 20',10

					savesna 	"basic.sna", start
					SLDOPT 		COMMENT WPMEM, LOGPOINT, ASSERTION
