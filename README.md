# Assembly

Course workspace for Assembly.

## Repository Overview

This project contains HDL designs, assembly programs, machine code outputs, and MIPS practice files.

## Structure

- `Computer architecture/1` – Basic logic gates in HDL (`And`, `Or`, `Not`, `Mux`, `DMux`, etc.).
- `Computer architecture/2` – Arithmetic chips (`HalfAdder`, `FullAdder`, `Add16`, `ALU`, etc.).
- `Computer architecture/3/a` – Sequential logic and small memory units (`Bit`, `Register`, `RAM8`, `RAM64`, `PC`).
- `Computer architecture/3/b` – Larger memory hierarchy (`RAM512`, `RAM4K`, `RAM16K`).
- `Computer architecture/4` – Assembly programs (`Fill.asm`, `Mult.asm`).
- `Computer architecture/6` – Compiled Hack binaries (`.hack` files).
- `Computer architecture/7` – MIPS assembly practice, answers, and tests.

For detailed notes on the Computer Architecture section, see:

- `Computer architecture/README.md`

## How to Use

1. Open the project in VS Code.
2. Edit HDL files with the Nand2Tetris tools or your course simulator.
3. Run/verify assembly programs with the relevant emulator used in class.
4. Use the `7/7_Tests` folder inputs to validate exercise solutions.

## Notes

- Folder names and file names follow the course exercise numbering.
- Keep outputs (`.hack`) and sources (`.asm` / `.hdl`) in their corresponding exercise folders.