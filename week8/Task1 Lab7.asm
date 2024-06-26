include Irvine32.inc


.data
dataArray DWORD 5 DUP(0)
arraySum DWORD 0
msg1 BYTE "Enter a Number: ",0
msg2 BYTE "Sum in Greater than EAX",0
msg3 BYTE "Sum in Less than EAX",0

.code
main proc

	mov ECX, 5
	mov ESI, 0

L1:
	mov EDX, OFFSET msg1
	call WriteString
	call ReadInt
	mov dataArray[ESI] , EAX
	add ESI, 4
LOOP L1
	

	mov ECX, 4
	mov ESI, 0
	mov EAX, dataArray[ESI]
	add ESI, 4
L2:
	add EAX, dataArray[ESI]
	add ESI, 4
LOOP L2
	
	mov arraySum, EAX 
	

	call CRLF
	mov EDX, OFFSET msg1
	call WriteString
	call ReadInt

	mov EBX, EAX
	mov EAX, arraySum
	cmp EAX, EBX
	JG L3
	JL L4
	exit
	
L3: 
	call func1
	exit
	
L4: 
	call func2
	exit

	
main endp


func1 proc
	mov EBX, 0
	mov EDX, OFFSET msg2
	call MsgBox
	RET
func1 endp


func2 proc
	mov EBX, 0
	mov EDX, OFFSET msg3
	call MsgBox
	RET
func2 endp

end main