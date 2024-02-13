		LOC Data_Segment
		GREG @
a		BYTE 14
b		BYTE 13
max		BYTE 0

x_a     IS $0
x_b		IS $1
x_max 	IS $2
buffer 	IS $3
	 
Main	LDB x_a,a
		LDB x_b,b
		SUB buffer,x_a,x_b	
		BNN buffer,p_z
		LDB x_max,b
		JMP end
p_z		LDB x_max,a
end		STB x_max,max
        TRAP 0,Halt,0