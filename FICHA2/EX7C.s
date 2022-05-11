.text
.global EX7C
.type EX7C ,"function"

EX7C: FSUB S0, S0, S1
		FSUB S1, S2, S3
		FMUL S0, S0, S0
		FMUL S1, S1, S1
		FADD S0, S0, S1
		FSQRT S0, S0
		RET
