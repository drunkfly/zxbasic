
syntax_error:		ld			de, MsgSyntaxError
					ld			bc, MsgSyntaxErrorEnd - MsgSyntaxError
					jr			error

identifier_too_long:ld			de, MsgIdentifierTooLong
					ld			bc, MsgIdentifierTooLongEnd - MsgIdentifierTooLong
					jr			error

unknown_keyword:	ld			de, MsgUnknownKeyword
					ld			bc, MsgUnknownKeywordEnd - MsgUnknownKeyword
					jr			error

stack_overflow:		ld			de, MsgStackOverflow
					ld			bc, MsgStackOverflowEnd - MsgStackOverflow
					jr			error

stack_underflow:	ld			de, MsgStackUnderflow
					ld			bc, MsgStackUnderflowEnd - MsgStackUnderflow
					jr			error

invalid_type:		ld			de, MsgInvalidType
					ld			bc, MsgInvalidTypeEnd - MsgInvalidType
					; <<pass-through to error>>

error:				call		0x203C
					ld			de, MsgAtLine
					ld			bc, MsgAtLineEnd - MsgAtLine
					call		0x203C
					ld			hl, (CurrentLine)
					call		WordToStr
					call		0x203C
					jp			$

MsgSyntaxError		db			"syntax error"
MsgSyntaxErrorEnd:

MsgIdentifierTooLong db			"identifier too long"
MsgIdentifierTooLongEnd:

MsgUnknownKeyword 	db			"unknown keyword"
MsgUnknownKeywordEnd:

MsgStackOverflow 	db			"expression stack overflow"
MsgStackOverflowEnd:

MsgStackUnderflow 	db			"expression stack underflow"
MsgStackUnderflowEnd:

MsgInvalidType 		db			"invalid operand type"
MsgInvalidTypeEnd:

MsgAtLine 			db			" at line "
MsgAtLineEnd:
