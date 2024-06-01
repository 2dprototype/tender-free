import "fmt"
import "colors" as color

print("print, hello")
println()
println("print new line, hello")

sysout 10, 20, 10+10, "hello" // writing statement, similar to print, println

// priting with colors

color.print(color.ired + "im red" + color.reset)
println()
color.println(color.igreen + "im green" + color.reset)

sysout color.ipurple, "Hi Hi Hi", color.reset, "\n"

debug({x:100,a:[1,2_3, 4]})