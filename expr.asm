
TYPE_NUMBER = 0
TYPE_STRING = 1
TYPE_CHAR = 2

					; Input:
					;   HL => line
					; Output:
					;   HL => first char after whitespace
					;   IX = number

read_expression_number:
					call		read_expression
					push		hl
					call		pop_number
					pop			hl
					ret

					; Input:
					;   HL => line
					; Output:
					;   HL => first char after whitespace

read_expression:	call		compare_expression
					ret

compare_expression:	call		additive_expression
.loop:				call		skip_whitespace
					ld			a, (hl)
					cp			'='
					jr			z, .eq
					ret
.eq:				inc			hl
					call		skip_whitespace
					call		additive_expression
					push		hl
					call		pop_number
					ld			c, ixl
					ld			b, ixh
					call		pop_number
					ld			a, c
					cp			ixl
					jr			nz, .eq_false
					ld			a, b
					cp			ixh
					jr			nz, .eq_false
					ld			ix, 1
					jr			.eq_done
.eq_false:			ld			ix, 0
.eq_done:			call		push_number
					pop			hl
					jr			.loop

additive_expression:call		multiply_expression
.loop:				call		skip_whitespace
					ld			a, (hl)
					cp			'+'
					jr			z, .add
					cp			'-'
					jr			z, .sub
					ret
.add:				inc			hl
					call		skip_whitespace
					call		multiply_expression
					push		hl
					call		pop_number
					ld			c, ixl
					ld			b, ixh
					call		pop_number
					add			ix, bc
					call		push_number
					pop			hl
					jr			.loop
.sub:				inc			hl
					call		skip_whitespace
					call		multiply_expression
					push		hl
					call		pop_number
					ld			c, ixl
					ld			b, ixh
					call		pop_number
					ld			e, ixl
					ld			d, ixh
					ex			de, hl
					scf ; CF = 1
					ccf ; CF = ~CF
					; CF = 0
					sbc			hl, bc
					ex			de, hl
					ld			ixl, e
					ld			ixh, d
					call		push_number
					pop			hl
					jr			.loop

multiply_expression:call		unary_expression
.loop:				call		skip_whitespace
					ld			a, (hl)
					cp			'*'
					jr			z, .mul
					ret
.mul:				inc			hl
					call		skip_whitespace
					call		unary_expression
					push		hl
					call		pop_number
					ld			c, ixl
					ld			b, ixh
					call		pop_number
					ld			e, ixl
					ld			d, ixh
					ld			hl, 0
					sla			e			; optimised 1st iteration;
					rl			d
					jr			nc, $+4
					ld			h, b
					ld			l, c
					dup			15
					add			hl, hl		; unroll 15 times
					rl			e			; ...
					rl			d			; ...
					jr			nc, $+6		; ...
					add			hl, bc		; ...
					jr			nc, $+3		; ...
					inc			de			; ...
					edup
					ex			de, hl
					ld			ixl, e
					ld			ixh, d
					call		push_number
					pop			hl
					jp			.loop

unary_expression:	ld			a, (hl)
					cp			'-'
					jr			z, .negate
					jr			primary_expression
.negate:			inc			hl
					call		primary_expression
					push		hl
					call		pop_number
					ld			a, ixl
					cpl
					ld			ixl, a
					ld			a, ixh
					cpl
					ld			ixh, a
					inc			ix
					call		push_number
					pop			hl
					ret

primary_expression:	ld			a, (hl)
					cp			'('
					jr			z, .parentheses
					cp			'"'
					jr			z, .string
					call		is_number
					jr			z, .readnum
					call		read_function
					jp			call_ix
.readnum:			call		read_number
					call		push_number
					ret
.string:			inc			hl
					ld			e, l
					ld			d, h
					ld			bc, 0
.stringLoop:		ld			a, (hl)
					inc			hl
					cp			'"'
					jr			z, .stringEnd
					inc			bc
					jr			.stringLoop
.stringEnd:			push		hl
					push		de
					call		push_value
					pop			de
					ld			(hl), TYPE_STRING
					inc			hl
					ld			(hl), e
					inc			hl
					ld			(hl), d
					inc			hl
					ld			(hl), c
					inc			hl
					ld			(hl), b
					pop			hl
					ret
.parentheses:		inc			hl
					call		skip_whitespace
					call		read_expression
					call		skip_whitespace
					ld			a, (hl)
					cp			')'
					jp			nz, syntax_error
					inc			hl
					ret
					
					; Input:
					;   IX = number

push_number:		push		hl
					call		push_value
					ld			(hl), TYPE_NUMBER
					inc			hl
					ld			a, ixl
					ld			(hl), a
					inc			hl
					ld			a, ixh
					ld			(hl), a
					pop			hl
					ret

					; Output:
					;   HL => stack slot

push_value:			ld			a, (NumberStackTop)
					cp			NUM_STACK_SIZE
					jp			nc, stack_overflow
					call		calc_num_stack_addr
					inc			a
					ld			(NumberStackTop), a
					ret

					; Output:
					;   IX = number

pop_number:			call		pop_value
					ld			a, (hl)
					cp			TYPE_NUMBER
					jp			nz, invalid_type
					inc			hl
					ld			a, (hl)
					ld			ixl, a
					inc			hl
					ld			a, (hl)
					ld			ixh, a
					ret

					; Output:
					;   HL => stack slot

pop_value:			ld			a, (NumberStackTop)
					or			a
					jp			z, stack_underflow
					dec			a
					ld			(NumberStackTop), a
					; <<pass-through to calc_num_stack_addr>>

					; Input:
					;   A = stack index
					; Output:
					;   HL => stack slot

calc_num_stack_addr:ld			l, a
					ld			h, 0
					ld			e, a
					ld			d, h
					add			hl, hl		; *2
					add			hl, hl		; *4
					add			hl, de		; *5
					ld			de, NumberStack
					add			hl, de
					ret
