.text
.global conta_ocorr
.type conta_ocorr, "function"

conta_ocorr: mov x4, 0
ciclo: cbz w1, fim
		sub w1, w1, 16
		ldr d1, [x0], 16
		dup v2.16b, w2
		cmeq v0.16b, v1.16b, v2.16b
		addv b0, v0.16b
		smov x6, v0.b[0]
		neg x6, x6
		add x4, x6, x4
		b ciclo

fim: mov x0, x4
	ret
