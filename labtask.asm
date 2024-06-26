INCLUDE Irvine32.inc

	TAB = 9
.data
	myArray1 BYTE 1,2,3,4,5
	lenARR DWORD ?
	var1 DWORD ?
	arrSum BYTE ?
.code
	promptInpt BYTE "Enter LOOP Count: ",0
	promptRnd BYTE "Random Number: ",0
	promptSum BYTE "Sum: ",0
main PROC
	mov lenARR,LENGTHOF myArray1
	mov var1,eax
	mov edx,OFFSET promptInpt
	call WriteString      ;print and input loop count
	call ReadInt
	mov var1,eax
	mov esi,OFFSET myArray1
	mov ecx,var1
L1:
	push ecx
	mov edx,OFFSET promptSum
	call writestring       ;print sum
	call intSum
	mov arrSum,al
	call WriteHex			;Hex notation
	call printTab
	call WriteBin			;Binary Notation
	call printTab
	call WriteInt			;Dec Notation
	pop ecx
	
	call Crlf
	call RandomRange        ;print random integer
	call WriteInt
	call Crlf

	LOOP L1
	exit
main ENDP

printTab PROC         ; prints tab and returns eax with req value(optional)
	mov al,TAB
	call WriteChar
	movzx eax,arrSum
	ret
printTab ENDP

intSum PROC
	call revArr
	mov ecx,lenArr
	push esi
	push ecx
	mov eax,0
loopSum:
	add al,[esi]
	add esi,TYPE BYTE 
	loop loopSum

	pop ecx 
	pop esi
	ret 
intSum ENDP

revArr PROC
	mov ecx,lenArr
	push esi
	push ecx
revLoop1:          ; push all array values to stack
	mov eax,0
	mov al,[esi]
	push eax
	add esi,TYPE BYTE 
	loop revLoop1

	mov ecx,lenArr
	mov edx,0
revLoop2:          ;retrieve values fro stack in lifo order so array is reversed
	pop eax
	mov myArray1[edx],al
	inc edx
	loop revLoop2

	pop ecx
	pop esi
	ret
revARR ENDP

END main