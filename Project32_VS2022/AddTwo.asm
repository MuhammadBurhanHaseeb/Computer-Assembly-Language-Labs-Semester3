; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
Include Irvine32.inc
.386
;.model flat,stdcall

.stack 4096
ExitProcess proto,dwExitCode:dword
.data
A DWORD 0
D DWORD 9
.code
main proc
	mov eax,10	
	SUB eax,7
	mov A,eax
	mov eax ,0
	mov eax , 5
	add eax, 6
	mul D
	mul A
	call WriteInt

	invoke ExitProcess,0
main endp
end main