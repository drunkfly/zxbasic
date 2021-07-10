
					; Input:
					;   HL => line
					; Output:
					;   HL => next line

check_eol:			call		skip_whitespace
					ld			a, (hl)
					cp			10
					jp			nz, syntax_error
					inc			hl
					ret

					; Input:
					;   HL => line
					; Output:
					;   HL => first char after whitespace after comma

read_comma:			call		skip_whitespace
					ld			a, (hl)
					cp			','
					jp			nz, syntax_error
					inc			hl
					jp			skip_whitespace

					; Input:
					;   HL => line
					; Output:
					;   ZF = 1 if number, 0 if not

is_number:			ld			a, (hl)
					sub			a, '0'
					jr			c, .notnumber
					cp			10
					jr			nc, .notnumber
					xor			a
					ret
.notnumber:			xor			a
					inc			a
					ret

					; Input:
					;   HL => line
					; Output:
					;   HL => first char after number
					;   IX => number

read_number:		ld			ix, 0
					ld			a, (hl)
					sub			a, '0'
					jp			c, syntax_error
					cp			10
					jp			nc, syntax_error
					jr			.first
.loop:				ld			a, (hl)
					sub			a, '0'
					ret			c
					cp			10
					ret			nc
.first:				inc			hl
					; IX = IX * 10
					add			ix, ix		; *2
					ld			c, ixl
					ld			b, ixh
					add			ix, ix		; *4
					add			ix, ix		; *8
					add			ix, bc		; *8+*2
					; IX += A
					ld			c, a
					ld			b, 0
					add			ix, bc
					jr			.loop

					; Input:
					;   HL => line
					; Output:
					;   HL => first char after identifier
					;   IX => keyword procedure

read_keyword:		call		read_identifier
					ld			a, 3
					cp			c
					jr			z, .length3
					ld			a, 4
					cp			c
					jr			z, .length4
					ld			a, 5
					cp			c
					jr			z, .length5
					jp			unknown_keyword

.length3:			ld			ix, LET-3
					call		compare
					ret			z
					ld			ix, CLS-3
					call		compare
					ret			z
					ld			ix, OUT-3
					call		compare
					ret			z
					jp			unknown_keyword

.length4:			ld			ix, GOTO-4
					call		compare
					ret			z
					ld			ix, POKE-4
					call		compare
					ret			z
					jp			unknown_keyword

.length5:			ld			ix, PRINT-5
					call		compare
					ret			z
					jp			unknown_keyword

					; Input:
					;   HL => line
					; Output:
					;   HL => first char after identifier
					;   DE => identifier
					;   BC = length, B == 0

read_identifier:	ld			d, h
					ld			e, l
					ld			bc, 0
					ld			a, (hl)
					cp			'_'
					jr			z, .loop
					and			0xdf			; letter to upper case
					cp			'A'
					jp			c, syntax_error
					cp			'Z'+1
					jp			nc, syntax_error
.loop:				inc			hl
					inc			c
					jp			z, identifier_too_long
					ld			a, (hl)
					cp			'_'
					jr			z, .loop
					cp			'0'
					jr			c, .notnumber
					cp			'9'+1
					jr			c, .loop
.notnumber:			and			0xdf
					cp			'A'
					ret			c
					cp			'Z'+1
					jr			c, .loop
					jp			identifier_too_long

					; read_whitespace - check at least one space is present
					; skip_whitespace - skips whitespace if present
					; Input:
					;   HL => line
					; Output:
					;   HL => first char after whitespace

read_whitespace:	ld			a, (hl)
                    cp			' '
                    jp			nz, syntax_error
                    inc			hl
skip_whitespace:	ld			a, (hl)
					cp			' '
					ret			nz
					inc			hl
					jr			skip_whitespace

					; Input:
					;   IX => string 1
					;   DE => string 2
					;   C => length 
					; Output:
					;   ZF = 1 if equal, ZF = 0 if not

compare:			ld			a, (de)
					cp			(ix)
					ret			nz
					inc			ix
					inc			de
					dec			c
					jr			nz, compare
					ret

					; Input:
					;   IX = line number
					; Output:
					;   HL => line

find_line:			ld			hl, source
					ld			c, ixl
					ld			b, ixh
.loop:				ld			e, l
					ld			d, h
					push		bc
					call		read_number
					pop			bc
					ld			a, ixl
					cp			c
					jr			nz, .next
					ld			a, ixh
					cp			b
					jr			z, .found
.next:				ld			a, (hl)
					inc			hl
					cp			10
					jr			nz, .next
					jr			.loop
.found:				ex			de, hl
					ret