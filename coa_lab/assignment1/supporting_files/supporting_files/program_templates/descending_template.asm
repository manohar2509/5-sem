	.data
a:
	70
	80
	40
	20
	10
	30
	50
	60
n:
	8
	.text
main:
	load %x0, $n, %x5
	addi %x0, 0, %x3
	subi %x3, 1, %x3
	addi %x0, 0, %x4
	subi %x4, 1, %x4
loop1:
	addi %x3, 1, %x3
	beq %x3, %x5, endloop
	addi %x3, 1, %x4
loop2:
	beq %x4, %x5, loop1
	load %x3, $a, %x6
	load %x4, $a, %x7
	blt %x6, %x7, swap
	addi %x4, 1, %x4
	jmp loop2
swap:
	add %x0, %x6, %x8
	store %x7, %x3, $a
	store %x8, %x4, $a
	addi %x4, 1, %x4
	jmp loop2
endloop:
	end
	