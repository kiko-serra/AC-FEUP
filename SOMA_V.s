.text
.global SOMA_V
.type SOMA_V, "function"

SOMA_V: LDR W0, [X0]
		ADD W12, W0, X2
		ret
