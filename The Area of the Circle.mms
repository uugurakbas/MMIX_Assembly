V IS $0
r IS $1
pi IS $2
b1 IS $3
b2 IS $4


		LOC #100

Main	FLOT r,3
		FLOT b1,2
		FDIV r,r,b1
		FLOT pi,3
		FLOT b2,14
		FLOT b1,100
		FDIV b2,b2,b1
		FADD pi,pi,b2
		FMUL V,r,r
		FMUL V,V,r
		FMUL V,V,pi
		FLOT b1,4
		FMUL V,V,b1
		FLOT b2,3
		FDIV V,V,b2
		TRAP 0,Halt,0