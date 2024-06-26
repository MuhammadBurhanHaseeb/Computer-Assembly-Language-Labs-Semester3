Include Irvine32.inc

.data

myArray DWORD 8, 6, 5, 10, 22, 0, 87, 6, 9, 90
arraySize=($-myArray)/TYPE myArray;
count Dword 0
temp Dword 0
var1 Dword ?
.code
main proc

	mov ECX,arraySize
	.While (ECX>=0)
	push ecx
	mov count,ecx
	mov ecx,arraySize
		.WHILE
		mov var1, myArray[count]
			mov eax,var1
			.IF (eax<myArray[ecx])
				mov temp,eax
				mov eax,myArray[ecx]
				mov var1,eax
				mov eax,temp
				mov myArray[ecx],eax
			.ENDIF
		.ENDW
		pop ecx
	.ENDW


	invoke ExitProcess,0
main endp
end main