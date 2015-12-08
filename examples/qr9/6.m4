include(`commons.m4').text:005410A0    lea     ebx, [esp+50h+internal_array_64]
.text:005410A4    mov     edi, 7          ; _EN(``EDI is loop 1 counter, initial state is 7'')_RU(``EDI здесь счетчик первого цикла, значение на старте - 7'')
.text:005410A9
.text:005410A9 second_loop1_begin:
.text:005410A9    xor     esi, esi        ; _EN(`ESI is loop 2 counter')_RU(`ESI - счетчик второго цикла')
.text:005410AB
.text:005410AB second_loop2_begin:
.text:005410AB    mov     al, [ebx+esi]   ; EN(`value from internal array')_RU(`значение из внутреннего массива')
.text:005410AE    push    eax
.text:005410AF    push    ebp             ; arg_0
.text:005410B0    push    edi             ; _EN(`loop 1 counter')_RU(`счетчик первого цикла')
.text:005410B1    push    esi             ; _EN(`loop 2 counter')_RU(`счетчик второго цикла')
.text:005410B2    call    set_bit
.text:005410B7    add     esp, 10h
.text:005410BA    inc     esi             ; _EN(`increment loop 2 counter')_RU(`инкремент счетчика второго цикла')
.text:005410BB    cmp     esi, 8
.text:005410BE    jl      short second_loop2_begin
.text:005410C0    dec     edi             ; _EN(`decrement loop 2 counter')_RU(`декремент счетчика первого цикла')
.text:005410C1    add     ebx, 8          ; _EN(`increment pointer in internal array')_RU(`инкремент указателя во внутреннем массиве')
.text:005410C4    cmp     edi, 0FFFFFFFFh
.text:005410C7    jg      short second_loop1_begin
.text:005410C9    pop     edi
.text:005410CA    pop     esi
.text:005410CB    pop     ebp
.text:005410CC    pop     ebx
.text:005410CD    add     esp, 40h
.text:005410D0    retn
.text:005410D0 rotate1         endp

