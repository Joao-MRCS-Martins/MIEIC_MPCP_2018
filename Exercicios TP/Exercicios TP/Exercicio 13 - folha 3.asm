include mpcp.inc
.data
val1 word 10
val2 word 10
res byte "O valor da multiplicao e: %d",13,10,0
.code
main proc C
	mov ax, val1
	mul val2
	shl eax, 16
	mov ax, dx
	rol eax, 16
	invoke printf, offset res, eax
	invoke _getch
	invoke ExitProcess, 0
main endp
end