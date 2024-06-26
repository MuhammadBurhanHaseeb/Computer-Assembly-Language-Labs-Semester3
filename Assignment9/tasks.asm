Include Irvine32.inc
.data
	testVal DWORD 0F16Bh
.code
main proc
;-------- TASK 1 ----------
	mov ebx,testVal
	shld eax,ebx,31
	shld eax,ebx,1
	inc eax
	call writeint
	call crlf

;-------- TASK 2 ----------
.data
	testVal2 SWORD -170
.code
	mov ax,testVal2
	SHL EAX,16
	SAR EAX,16
	call writeint
	call crlf

;-------- TASK 3 ----------
	mov eax,123
	shl eax,6
	call writeint

	exit
main endp
end main