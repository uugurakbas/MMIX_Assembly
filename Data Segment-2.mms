	 LOC Data_Segment
	 GREG @
num  OCTA 9
data OCTA 2,10,32,45,21,42,44,6,70
	 LOC #100

ind IS $1
adr IS $2
dt  IS $3
nmr IS $4
dt1 IS $5


Main LDO nmr,num
	 SUB ind,nmr,1
	 LDA adr,data
	 LDO dt,data
rtn	 ADD adr,adr,8	
	 LDO dt1,adr
	 ADD dt,dt,dt1
	 SUB ind,ind,1
	 BNZ ind,rtn
	 DIV dt,dt,nmr
	
	 TRAP 0,Halt,0