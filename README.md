## Tender

Tender is a freeware programming language specially designed for image processing, 2D graphics, scripting, and more!

## Overview

Tender is compiled and executed as bytecode on a stack-based VM, which is written in native Golang.

## Features
- Simple and highly readable syntax
- Can be compiled into bytecode
- Supports rich built-in modules
- Specially designed for 2D graphics

## Quick Start

1. Install Tender on your machine.
2. Copy the sample code below:

```go
// Basic example
str1 := "hello"
str2 := "world"

println(str1 + " " + str2)
```

```go
// Example of canvas drawing (similar to JS Canvas)
import "canvas"
	
var ctx = canvas.new_context(100, 100)
ctx.hex("#0f0")
ctx.dash(4, 2)
ctx.rect(25, 25, 50, 50)
ctx.stroke()

ctx.save_png("out.png")
```

3. Save your code as `hello.td` (must use `.td` as the extension).
4. Run your script using this command:

```bash
tender hello.td
```

## Installation

1. Download this repository.
2. Run the `install.sh` script to install Tender on your system.

### Windows (Manual Installation)
1. Download the `tender.exe` binary based on your machine from the [bin/os_arch](bin) directory and the `pkg` directory from [pkg](pkg).
2. Copy the `tender.exe` and `pkg` directory to your desired location as follows:
```bash
├───bin
│   └───tender.exe
└───pkg
    │   ansi.td
    │   cinf.td
    │   console.td
    │   enum.td
    │   fs.td
    │   matrix.td
    │   messagebox.td
    │   utf8.td
    │   vec2.td
    │   xml.td
    └───helper
```
3. Copy the path of the `bin` folder and add it to your system's environment path.

## Documentation

* [Runtime Types](https://github.com/2dprototype/tender-free/blob/master/docs/runtime-types.md)
* [Builtins](https://github.com/2dprototype/tender-free/blob/master/docs/builtins.md)
* [Operators](https://github.com/2dprototype/tender-free/blob/master/docs/operators.md)
* [Standard Library](https://github.com/2dprototype/tender-free/blob/master/docs/stdlib.md)

## Examples

Explore various examples demonstrating the usage of Tender in different scenarios in the [examples](examples) directory.

## Dependencies

Tender relies on the following dependencies:

- [go-mp3](https://github.com/hajimehoshi/go-mp3)
- [gorilla/websocket](https://github.com/gorilla/websocket)
- [ebitengine/oto/v3](https://github.com/ebitengine/oto/v3)
- [exp/shiny](https://pkg.go.dev/golang.org/x/exp/shiny)
- [fogleman/gg](https://github.com/fogleman/gg)

## Syntax Highlighting

Currently, syntax highlighting is available only for [Notepad++](misc/syntax/npp_tender.xml).

## License

Tender is distributed under the [MIT License](LICENSE), with additional licenses provided for third-party dependencies. See [LICENSE_GOLANG](LICENSE_GOLANG) and [LICENSE_TENGO](LICENSE_TENGO) for more information.

## Acknowledgments

Tender is written in Go, based on Tengo. We extend our gratitude to the contributors of Tengo for their valuable work.

## Message

Tender was initially planned to be distributed as open-source software. Unfortunately, for some reasons, it has ended up being distributed as freeware. However, we are planning to publish Tender as open-source in the future.