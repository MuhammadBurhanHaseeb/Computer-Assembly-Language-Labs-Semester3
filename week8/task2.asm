Include Irvine32.inc
.data
	inArray SWORD 0,0,0,0,20,35,-12,66,4,0
	string DWORD ?
	noneMsg BYTE "A non-zero value was not found",0
.code
main PROC
call arrayFind
main ENDP

arrayFind PROC
    call ReadString
	mov ebx,OFFSET inArray 
	mov ecx,LENGTHOF inArray 
Label1:
	cmp WORD PTR [ebx],0 
	jnz found ; found a value
	add ebx,TYPE inArray 
	loop Label1 ; continue the loop
	jmp notFound 
found:
	movsx eax,WORD PTR [ebx] 
	call WriteInt
	jmp quit
notFound:
	mov edx,OFFSET noneMsg ; display "not found" message
	call WriteString
quit:
	call crlf
	exit

	ret
arrayFind ENDP
END main