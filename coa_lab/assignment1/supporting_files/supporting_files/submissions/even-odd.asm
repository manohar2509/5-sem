	.data
a:
	10
	.text
main:
	load %x0, $a, %x3			
	divi %x3, 2, %x3			
	beq %x31, %x0, even			
	jmp odd
even:
	subi %x0, 0, %x10			
	subi %x0, 1, %x10			
	end
odd:
	subi %x0, 0, %x10			
	addi %x0, 1, %x10		
	end