	.data
a:
	11
	.text
main:
	load %x0, $a, %x3
	addi %x0, 0, %x4
	addi %x0, 0, %x11
	addi %x0, 0, %x12
	addi %x11, 1, %x11
	addi %x12, 2, %x12
	beq %x3, %x11, failure
	beq %x3, %x12, success
	add %x0, %x12, %x4
	addi %x0, 0, %x6
loop:
        beq %x4, %x3, success
        div %x3, %x4, %x6
        beq %x31, %x0, failure
        addi %x4, 1, %x4
        jmp loop
success:
        addi %x0, 0, %x10
        addi %x0, 1, %x10
        end
failure:
        addi %x0, 0, %x10
        subi %x0, 1, %x10
        end