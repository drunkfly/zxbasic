
syntax_error:		ld			de, MsgSyntaxError
					ld			bc, MsgSyntaxErrorEnd - MsgSyntaxError
					call		0x203C
					jp			$

identifier_too_long:ld			de, MsgIdentifierTooLong
					ld			bc, MsgIdentifierTooLongEnd - MsgIdentifierTooLong
					call		0x203C
					jp			$

unknown_keyword:	ld			de, MsgUnknownKeyword
					ld			bc, MsgUnknownKeywordEnd - MsgUnknownKeyword
					call		0x203C
					jp			$

stack_overflow:		ld			de, MsgStackOverflow
					ld			bc, MsgStackOverflowEnd - MsgStackOverflow
					call		0x203C
					jp			$

stack_underflow:	ld			de, MsgStackUnderflow
					ld			bc, MsgStackUnderflowEnd - MsgStackUnderflow
					call		0x203C
					jp			$

invalid_type:		ld			de, MsgInvalidType
					ld			bc, MsgInvalidTypeEnd - MsgInvalidType
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
