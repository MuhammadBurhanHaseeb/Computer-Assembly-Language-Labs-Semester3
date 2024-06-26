INCLUDE Irvine32.inc

.data
msg1 byte "Enter your marks: ", 0
msg2 byte "your marks are ", 0
msg3 byte " and grade is 'C'", 0
msg4 byte " and grade is 'B'", 0
msg5 byte " and grade is 'A'", 0

val1 byte 70
val2 byte 80
val3 byte 90

.code
main proc
	mov	edx, OFFSET msg1				
	call WriteString
	call ReadInt
Cgrade:
	cmp al,val1 ;first expression...
	ja L1
	jmp quit
L1: 
	cmp val2,al ;second expression...
	ja L2
	jmp Bgrade
L2: 
	mov edx, OFFSET msg2
	call WriteString
	call WriteInt
	mov edx, OFFSET msg3
	call WriteString
	jmp quit

Bgrade:
	cmp al,val2 ;first expression...
	ja L3
	jmp quit
L3: 
	cmp val3,al ;second expression...
	ja L4
	jmp Agrade
L4: 
	mov edx, OFFSET msg2
	call WriteString
	call WriteInt
	mov edx, OFFSET msg4
	call WriteString

Agrade:
	cmp al,val3 ;first expression...
	ja L6
	jmp quit
L6: 
	mov edx, OFFSET msg2
	call WriteString
	call WriteInt
	mov edx, OFFSET msg5
	call WriteString
quit:

	invoke ExitProcess,0
main endp
end main