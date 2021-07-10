
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
					call		read_whitespace
					call		read_keyword
					call		call_ix
                    ret

call_ix:			jp			(ix)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"PRINT"
PRINT:				call		read_whitespace
					call		read_expression
					call		check_eol
					push		hl
					call		pop_value
					ld			a, (hl)
					cp			TYPE_NUMBER
					jr			z, .print_number
					cp			TYPE_STRING
					jr			z, .print_string
					pop			hl
					ret

.print_number:		inc			hl
					ld			a, (hl)
					inc			hl
					ld			h, (hl)
					ld			l, a
					call		WordToStr
					call		0x203C			; ROM PRINT
					ld			a, 13			; print new line
					rst			16
					pop			hl
					ret

.print_string:		inc			hl
					ld			e, (hl)
					inc			hl
					ld			d, (hl)
					inc			hl
					ld			c, (hl)
					inc			hl
					ld			b, (hl)
					call		0x203C			; ROM PRINT
					ld			a, 13			; print new line
					rst			16
					pop			hl
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"LET"
LET:				call		read_whitespace
					
					ret

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
					call		read_number
					push		ix
					call		read_comma
					call		read_number
					ld			e, ixl
					call		check_eol
					pop			ix
					ld			(ix), e
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"OUT"
OUT:				call		read_whitespace
					call		read_number
					push		ix
					call		read_comma
					call		read_number
					ld			e, ixl
					call		check_eol
					pop			bc
					out			(c), e
					ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

					db			"GOTO"
GOTO:				call		read_whitespace
					call		read_number
					call		check_eol
					call		find_line
					ret

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
					include		"parse.asm"
					include		"error.asm"


CurrentLine			dw			0

STACK_SIZE = 20
NumberStackTop:		db			0
NumberStack:		defs		5 * STACK_SIZE	; 1 byte = tag (value type)
												; 4 byte = value
												;    number: 2b value
												;    string: 2b addr, 2b len

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

source:				db			'10 CLS',10
					db			'20 PRINT "HELLO, WORLD"',10
					db			'30 POKE 16384,255',10
					db			'40 POKE 22528,199',10
					db			'50 OUT 254,4',10
					db			'60 GOTO 60',10

					savesna 	"basic.sna", start
					SLDOPT 		COMMENT WPMEM, LOGPOINT, ASSERTION
