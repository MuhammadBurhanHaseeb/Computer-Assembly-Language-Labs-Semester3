include Irvine32.inc


.data
array1 BYTE "Hello World",0
array2 BYTE "ABC GHI XYZ",0


.code
main proc

      mov esi,0 
	mov ecx,SIZEOF array1 
L1:
	mov al,array1[esi] 
	mov ah,array2[esi]
      mov array2[esi],al 
	mov array1[esi],ah
	inc esi 
	loop L1 
	
	mov edx, OFFSET array1
	call WriteString 

invoke ExitProcess,0
main endp
end main