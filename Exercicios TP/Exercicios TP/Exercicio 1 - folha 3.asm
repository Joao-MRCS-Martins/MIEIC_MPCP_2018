include mpcp.inc
.data
string byte "Isto � um pombo",0
res byte "Tamanho = %d",13,10,0
.code
main proc C
	   xor eax, eax
	   mov esi, offset string ; endere�o de cadeia de carateres
ciclo: mov bl, [esi]
	   cmp bl, 0
	   je fim
	   inc eax
	   inc esi
	   jmp ciclo
fim:   invoke printf, offset res, eax 
	   invoke _getch
	   invoke ExitProcess, 0
main endp
end