; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
A DWORD 30
B DWORD 20
C1 DWORD 10
D DWORD 5


.code
main proc
	mov eax, A
	mov ebx, B
	mov ecx, C1
	mov edx, D

	add eax, ebx
	add ecx, edx
	sub eax, ecx

	mov A, eax


	invoke ExitProcess,0
main endp
end main