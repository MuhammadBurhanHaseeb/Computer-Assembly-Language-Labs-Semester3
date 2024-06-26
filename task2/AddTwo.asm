; This Code adds two 32-bit integers.
Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	var1 EQU < "Hello World",0>
	var2 EQU < "Assembly Language",0>

	strVar1 BYTE var1
	varSize1 = $-strVar1 - 1
	strVar2 BYTE var2
	varSize2 = $-strVar2 - 1 

.code
main proc
	mov eax,varSize1
call WriteInt

	mov eax,varSize2
call WriteInt

invoke ExitProcess,0
main endp
end main