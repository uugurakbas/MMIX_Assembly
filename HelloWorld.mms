		LOC Data_Segment
		GREG @
HW   	BYTE "Hello_World",#A,0
i 		IS $3

		LOC #100

Main	SET i,3
rtn		LDA $255,HW
		SUB i,i,1
		TRAP 0,Fputs,StdOut
		BNZ i,rtn
		TRAP 0,Halt,0
		
