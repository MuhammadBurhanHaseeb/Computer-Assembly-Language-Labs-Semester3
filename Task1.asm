include Irvine32.inc


.data
array WORD 50 DUP(5)
totalBytes = SIZEOF array
totalLength = LENGTHOF array

.code
main proc

	mov eax, totalBytes
	call writeint

	mov eax, totalLength 
	call writeint 

	movzx eax, [array + 100]  
	call WriteInt
	

	mov eax, 0
	mov ecx, totalLength - 1
	mov esi, 0
	mov ax, [array + esi]
L1:
	add ax, [array + esi]
	add esi, 2
loop L1
	call writeint
	
	mov bl, totalLength
	div bl  
	call writeint

	
invoke ExitProcess,0
main endp
end main