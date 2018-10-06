include mpcp_cpp.inc
.xmm
.code
prodint proc uses esi edi res: ptr real4, vectX: ptr real4, vectY: ptr real4, N:dword
mov ecx, N
mov esi, vectX
mov edi, vectY
xorps xmm0, xmm0
ciclo: movss xmm1, real4 ptr [esi]
mulss xmm1, real4 ptr [edi]
addss xmm0, xmm1
add esi, 4
add edi, 4
loop ciclo
mov eax, res
movss real4 ptr [eax], xmm0
ret
prodint endp

prodintSIMD proc uses esi edi res: ptr real4, vectX: ptr real4, vectY: ptr real4, N:dword
mov ecx, N
shr ecx, 2
mov esi, vectX
mov edi, vectY
xorps xmm0, xmm0
cycle: movaps xmm1, real4 ptr [esi]
mulps xmm1, real4 ptr [edi]
addps xmm0, xmm1
add esi, 16
add edi, 16
loop cycle
haddps xmm0, xmm0
haddpd xmm0, xmm0
mov eax, res
movss real4 ptr [eax], xmm0
ret
prodint endp