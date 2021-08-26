	.data
a:
	70
	80
	40
	20
	3
	30
	50
	60
n:
	8
	.text
main:
	addi %x0, 0, %x3
	addi %x3, 0, %x4
	load %x0, $n, %x5
l1:
	beq %x3, %x5, endloop
	jmp l2
l2:
	beq %x4, %x5, move
	load %x3, $a, %x6
	load %x4, $a, %x7
	bgt %x7, %x6, swapping
	addi %x4, 1, %x4
	jmp l2
swapping:
	addi %x7, 0, %x8
	addi %x6, 0, %x7
	addi %x8, 0, %x6
	store %x6, $a, %x3
	store %x7, $a, %x4
	addi %x4, 1, %x4
	jmp l2
move:
	addi %x3, 1, %x3
	addi %x3, 0, %x4
	jmp l1
endloop:
	end