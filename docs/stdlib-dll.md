## DLL Module Documentation

The `dll` module provides functionalities for loading and calling functions from dynamic-link libraries (DLLs) in the Windows environment.

### Functions

#### `new(dll_name)`

Loads a dynamic-link library (DLL) with the specified name.

- `dll_name`: Name of the DLL file to load.

#### `load(dll_name)`

Loads a dynamic-link library (DLL) with the specified name.

- `dll_name`: Name of the DLL file to load.

### DLL Functions

#### `proc(function_name)`

Retrieves a procedure address from the loaded DLL.

- `function_name`: Name of the function to retrieve.

#### `call(arguments...)`

Calls a function from the loaded DLL.

- `arguments`: Arguments to pass to the function.

### Example Usage

#### Example DLL in C

```c
// example_dll.c

#include <stdio.h>
#include <stdlib.h>

#ifdef _WIN32
#define EXPORT __declspec(dllexport)
#else
#define EXPORT
#endif

EXPORT int add(int a, int b) {
    return a + b;
}
```

### Loading and Using the DLL in Tender

```go
// example.td
import "dll"

// Load the DLL
my_dll := dll.load("example_dll.dll")

// Get the 'add' function from the DLL
add_func := my_dll.proc("add")

// Call the 'add' function with arguments
result := add_func.call(3, 4)

// Print the result
println("Result of addition:", result)  // Output: Result of addition: 7
```


### How to compile dll

1. Compile the C code into a DLL. For example, using MinGW on Windows:

    ```
    gcc -shared -o example_dll.dll example_dll.c
    ```

2. Load and use the DLL in Tender as shown in the example above.

    ```
    tender test_dll.td
    ```
