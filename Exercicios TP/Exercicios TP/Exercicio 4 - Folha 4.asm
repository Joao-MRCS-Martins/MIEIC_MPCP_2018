include mpcp.inc
.data
cadeia byte "Exemplo de (cadeia de caracteres."
resval byte "A cadeia tem parentesis emparelhados",13,10,0
resinv byte "A cadeia nao tem parentesis emparelhados",13,10,0
.code
main proc C
		mov ecx, lengthof cadeia
		mov eax, offset cadeia
		mov dh, 0
		mov dl, 0
		mov di,0
		mov bx, [eax]
ciclo:	.if (bx == 41 && dh == 0) || ( bx == 93 && dl == 0) || (bx == 125 && di == 0)
			jmp fim2
		.elseif (bx == 40)
			inc dh
		.elseif (bx == 91)
			inc dl
		.elseif (bx == 123)
			inc di
		.elseif (bx == 41)
			dec dh
		.elseif (bx == 93)
			dec dl
		.elseif (bx == 125)
			dec di
		.endif
		inc bx
		dec ecx
		jnz ciclo
		.if (dh == 0 && dl == 0 && di == 0)
		jmp fim2
		invoke printf, offset resinv
		jmp fim
fim2:	invoke printf, offset resval
fim:	invoke _getch
		invoke ExitProcess, 0
main endp
end


;//
;||
;|| CORRIGIR PROGRAMA; USAR PUSH POP
;||
;||
;