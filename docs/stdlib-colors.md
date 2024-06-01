# colors Module

The `colors` module provides functions and constants for printing colored text to the terminal.

## Functions

- `print(...args)`: Prints the given arguments to the terminal without a newline character, with support for colored text.
- `println(...args)`: Prints the given arguments to the terminal with a newline character at the end, with support for colored text.

## Constants

- `reset`: Resets the text color to the default.
- Regular Colors:
  - `black`
  - `red`
  - `green`
  - `yellow`
  - `blue`
  - `purple`
  - `cyan`
  - `white`
- Bold Colors:
  - `bblack`
  - `bred`
  - `bgreen`
  - `byellow`
  - `bblue`
  - `bpurple`
  - `bcyan`
  - `bwhite`
- Underline Colors:
  - `ublack`
  - `ured`
  - `ugreen`
  - `uyellow`
  - `ublue`
  - `upurple`
  - `ucyan`
  - `uwhite`
- Background Colors:
  - `on_black`
  - `on_red`
  - `on_green`
  - `on_yellow`
  - `on_blue`
  - `on_purple`
  - `on_cyan`
  - `on_white`
- High Intensity Colors:
  - `iblack`
  - `ired`
  - `igreen`
  - `iyellow`
  - `iblue`
  - `ipurple`
  - `icyan`
  - `iwhite`
- Bold High Intensity Colors:
  - `biblack`
  - `bired`
  - `bigreen`
  - `biyellow`
  - `biblue`
  - `bipurple`
  - `bicyan`
  - `biwhite`
- High Intensity Background Colors:
  - `on_iblack`
  - `on_ired`
  - `on_igreen`
  - `on_iyellow`
  - `on_iblue`
  - `on_ipurple`
  - `on_icyan`
  - `on_iwhite`

### Example Usage

```go
import "colors" as color

color.println(color.green + "hello" + color.reset)
```