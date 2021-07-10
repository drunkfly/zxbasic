
					db			"IN"
IN:					call		read_whitespace
					call		read_number
					call		skip_whitespace
					ld			c, ixl
					ld			b, ixh
					in			a, (c)
					ld			ixl, a
					ld			ixh, 0
					push		hl
					call		push_number
					pop			hl
					ret

					db			"PEEK"
PEEK:				call		read_whitespace
					call		read_expression_number
					call		skip_whitespace
					ld			a, (ix)
					ld			ixl, a
					ld			ixh, 0
					push		hl
					call		push_number
					pop			hl
					ret

					db			"CHR$"
CHR:				ld			a, (hl)
					cp			'('
					jp			nz, syntax_error
					inc			hl
					call		skip_whitespace
					call		read_expression_number
					call		skip_whitespace
					ld			a, (hl)
					cp			')'
					jp			nz, syntax_error
					inc			hl
					push		hl
					call		push_value
					ld			(hl), TYPE_CHAR
					inc			hl
					ld			a, ixl
					ld			(hl), a
					pop			hl
					ret
