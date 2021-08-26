	.data
n:
	5
	.text
main:
	load %x0, $n, %x3
	beq %x0, %x3, endloop
	addi %x0, 0, %x10
	addi %x10, 1, %x10
	addi %x0, 0, %x6
	addi %x0, 65535, %x6
	store %x0, 0, %x6
	beq %x10, %x3, endloop 
	addi %x0, 0, %x4
	addi %x4, 1, %x4
	addi %x10, 1, %x10
	subi %x6, 1, %x6
	store %x4, 0, %x6
	beq %x10, %x3, endloop
	addi %x0, 0, %x5
	addi %x5, 1, %x5
	addi %x10, 1, %x10
	subi %x6, 1, %x6
	store %x5, 0, %x6
	beq %x10, %x3, endloop 
loop:
	beq %x10, %x3, endloop
	addi %x0, 0, %x8
	add %x4, %x5, %x8
	subi %x6, 1, %x6
	addi %x10, 1, %x10
	store %x8, 0, %x6
	add %x0, %x5, %x4
	add %x0, %x8, %x5
	jmp loop
endloop:
	end