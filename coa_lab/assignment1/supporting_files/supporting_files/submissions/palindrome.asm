	.data
a:
	11
	.text
main:
    	load %x0, $a, %x3     ;
    	addi %x0, 0, %x4      ;
	addi %x0, 0, %x5      ;
	add  %x0, %x3, %x5    ;
	addi %x0, 0, %x6      ;
	addi %x0, 0, %x7      ;
	addi %x0, 0, %x8      ;
	addi %x0, 0, %x15     ;
	addi %x0, 1, %x15     ;
loop:
    blt %x3, %x15, result    ;
	divi %x3, 10, %x7     ;
	muli %x4, 10, %x8     ;
	add %x8, %x31, %x4    ;
	divi %x3, 10, %x3     ;
	jmp loop              ;
result:
    beq $x5, $x4, success ;
	addi %x0, 0, %x10     ;
	subi %x0, 1, %x10     ;
	end
success:
    addi %x0, 0, %x10    ;
	addi %x0, 1, %x10    ;
	end