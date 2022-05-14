sumf:
      stp x29, x30, [sp, -64]!
      mov x19, sp
      mov W2, 0
      scvtf D1, W2 // somatório
      scvtf D2, W2 // zero para comparacao mov W3, 5
      scvtf D3, W3 // valor 5 para calculo
ciclo:
      cbz W1, fim
      ldr D4, [X0], 8
      sub w1, w1, 1
      fcmp D4, D2
      b.lt callFuncY 
      fmul D4, D4, D4
      fadd D4, D4, D3
      fsqrt D4, D4
      fadd D1, D1, D4
      b ciclo
callFuncY:
      fmov D0, D4
      stp X0, X1, [sp, 16]
      stp D1, D2, [sp, 32]
      str D3, [sp, 48]
      bl funcy
      ldp X0, X1, [sp, 16]
      ldp D1, D2, [sp, 32]
      ldr D3, [sp, 48]
      fadd D1, D1, D0
      b ciclo
fim:
      fmov D0, D1
       ldp x29, x30, [sp], 64
       ret
