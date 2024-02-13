		LOC Data_Segment
		GREG @
E   	BYTE 0
		LOC  E+80
Ein 	OCTA E
		OCTA 80
dgr		IS 	$1
i		IS 	$2
SB		IS 	$3
adr		IS  $4
x		IS  $5


dgstr 	LDA $255,Data_Segment
		STB dgr,$255,i
		GO  $0,$0,0
		

		LOC #100
Main	LDA $255,Ein
		TRAP 0,Fgets,StdIn
		SUB i,$255,1
rtn		SUB i,i,1
		LDA adr,Data_Segment
		ADD adr,adr,i
		LDB	x,adr
		SUB SB,x,97
		BN  SB,kosul
		SUB dgr,x,32
		GO  $0,dgstr

kosul	BNZ	 i,rtn
		TRAP 0,Fputs,StdOut
		TRAP 0,Halt,0

