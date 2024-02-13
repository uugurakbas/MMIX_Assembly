x IS $1
Y IS $2
buf1 IS $3
buf2 IS $4 
buf3 IS $5
 

		LOC #100
	
Main	FLOT buf1,17
		FLOT buf2,15
		FLOT buf3,10
		FDIV buf1,buf1,buf3
		FDIV buf2,buf2,buf3
		FMUL buf1,buf1,x
		FMUL buf2,buf2,x
		FSQRT buf1,buf1
		FSQRT buf2,buf2
		FADD Y,buf1,buf2

		TRAP 0,Halt,0