; This Code adds two 32-bit integers.
Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	A DD 17
	B DD 6
	CC DD 9
	D DD 3
.code
main proc
	mov eax,A
	mov ebx,B
	mov ecx,CC
	mov edx,D

	add eax,ebx
	add ecx,edx

	sub eax,ecx
	call WriteInt

invoke ExitProcess,0
main endp
end main