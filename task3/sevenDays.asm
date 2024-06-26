; This Code adds two 32-bit integers.
Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	mon EQU <"Monday",0>
	tue EQU <"Tuesday",0>
	wed EQU <"Wednesday",0>
	thu EQU <"Thirsday",0>
	fri EQU <"Friday",0>
	sat EQU <"Saturday",0>
	sun EQU <"Sunday",0>

	array BYTE mon,tue,wed,thu,fri,sat,sun
.code
main proc
	    
invoke ExitProcess,0
main endp
end main