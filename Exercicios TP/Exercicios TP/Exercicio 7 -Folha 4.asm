include mpcp.inc

LIM proto ptseq:ptr sword, nelem: dword, limite: sword
MAXFREQ proto ptseq:ptr sword, nelem: dword
LONGSEQ proto ptseq:ptr sword, nelem: dword

.data 
seq sword 4,-2,8,11,9,4

valor sword ?
msg_ler byte "Indique o limite a considerar: ",0
fmt_ler byte "%d"
res_lim byte "Numero de elementos superiores = %d",13,10,0

.code
#LIM proc ptseq: ptr sword, N: dword, limite: sword
#		mov esi, ptseq
#		mov ecx, N
#		xor eax,eax
#		mov bx, limite
#ciclo:	cmp [esi],bx
#		jle menor
#		inc eax
#menor:	add esi, 2
#		loop ciclo
#		ret
#LIM endp

MAXFREQ proc ptseq : ptr sword, N : dword
	LOCAL freq[lengthof seq] : byte
	


main proc C
#invoke printf, offset msg_ler
#invoke scanf, offset fmt_ler, offset valor
#invoke LIM, offset seq, lengthof seq, valor
#invoke printf,offset res_lim, eax
invoke _getch
invoke ExitProcess, 0
main endp

end
