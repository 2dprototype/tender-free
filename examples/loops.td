//loop over string (for in)
for i, a in "hello world" {
	println(i, a)
}
//loop over array (for in)
for a in [1, 2, 3, 4, 6, 8, 2, 4] {
	println(a)
}
for a in range(-10, 10) {
	println(a)
}
//loop over map (for in)
for k, v in {x:10, y:20} {
	println(k, v)
}
//loop (for)
for i := 0; i < 1; i+=0.1 {
	println(i)
} 
// loop (condition)
x := 0 
for x < 3 {
	println(x)
	x++
}
//loop (break, continue)
for i in range(0, 20) {
	if i == 10 {
		continue
	}
	else if i == 15 {
		break
	}
	println(i)
}
//infinite loop
sysout "string infinite loop..."
for {}