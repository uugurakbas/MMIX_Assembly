a IS $0
b IS $1
c IS $2
d IS $3
buf1 IS $4
buf2 IS $5
	
	LOC #100

Main 	SET b,7
		SET c,3
		SET d,12
		ADD buf1,c,d
		ADD buf2,c,2
		DIV a,buf1,buf2
		MUL buf1,b,d
		MUL buf2,c,2
		ADD buf1,buf1,buf2
		ADD buf2,b,3
		DIV buf1,buf1,buf2
		SUB a,a,buf1
		
		TRAP	0,Halt,0

