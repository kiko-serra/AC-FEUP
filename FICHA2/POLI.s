.text
.global POLI
.type POLI ,"function"

POLI:   MOV X11, X30
		mov X10, X0 // <1>
		bl QUAD
		mov X20, X0
		mov X0, 3
		mul X10, X10, X0
		add X0, X20, X10
		add X0, X0, 1
		MOV X30, X11
FIM:	ret // <2>
QUAD:
		mul X0, X0, X0
		ret
