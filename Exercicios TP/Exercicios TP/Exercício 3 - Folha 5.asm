include mpcp.inc
.XMM
.data
PI real8 3.1415926535897932
R real8 ?
MSG BYTE "Qual o raio da circunferência? ",0
valor byte "%lf"
MSG2 BYTE "A area e: %lf",13,10,0
AREA real8 ?
.code
main proc C
invoke printf, offset MSG
invoke scanf,offset valor, offset R
movsd xmm0, R
mulsd xmm0,xmm0
mulsd xmm0, PI
movsd AREA, xmm0
invoke printf, offset MSG2, AREA
invoke _getch
invoke ExitProcess, 0
main endp
end