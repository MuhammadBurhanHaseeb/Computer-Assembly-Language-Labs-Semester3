; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
Include Irvine32.inc
.386
;.model flat,stdcall

.stack 4096
ExitProcess proto,dwExitCode:dword
.data
A DWORD 4
B DWORD 0
D DWORD 21
.code
main proc

	mov al,5	
	mul A
	movzx eax , al
	mov A , eax
	mov ah,3
	add ah,7
	movzx eax , ah
	mul D
	mov B ,eax
	mov eax ,A
	sub eax ,B
	call WriteInt

	invoke ExitProcess,0
main endp
end main