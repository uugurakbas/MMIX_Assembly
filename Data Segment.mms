		LOC  Data_Segment
		GREG @
x1   	OCTA 35
x2		OCTA 12
x3		OCTA 79
x4		OCTA 8
m		OCTA 0
n		OCTA 0


a		IS $1
b		IS $2
c		IS $3
d		IS $4
zeahler	IS $5
nenner	IS $6

		LOC  #100
Main	LDO  a,x1
		LDO  b,x2
		LDO  c,x3
		LDO  d,x4
		MUL	 a,a,d
		MUL	 c,c,b
		MUL	 nenner,b,d
		ADD  zeahler,a,c
		STO  zeahler,m
		STO  nenner,n

		TRAP	0,Halt,0