		LOC Data_Segment
		GREG @
b		BYTE 0
		LOC b+80
arg		OCTA b
		OCTA 80

	
		LOC #100
Main 	LDA $255,arg
		TRAP 0,Fgets,StdIn
		SUB $1,$255,1
		MUL $2,$1,$1
		LDA $255,b
		TRAP 0,Fputs,StdOut
		TRAP 0,Halt,0