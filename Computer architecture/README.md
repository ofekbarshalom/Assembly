# Computer Architecture

This folder contains course exercises organized by unit number.

## Folder Guide

### `1` – Boolean Logic (Combinational)

HDL implementations of basic logic and bus-based logic chips:

- `And.hdl`, `Or.hdl`, `Not.hdl`, `Xor.hdl`
- `And16.hdl`, `Or16.hdl`, `Not16.hdl`, `Or8Way.hdl`
- `Mux.hdl`, `Mux16.hdl`, `Mux4Way16.hdl`, `Mux8Way16.hdl`
- `DMux.hdl`, `DMux4Way.hdl`, `DMux8Way.hdl`

### `2` – Arithmetic Logic

HDL implementations for arithmetic building blocks:

- `HalfAdder.hdl`, `FullAdder.hdl`
- `Add16.hdl`, `Inc16.hdl`
- `ALU.hdl`

### `3` – Sequential Logic and Memory

#### `3/a`

Core sequential components and small memory modules:

- `Bit.hdl`, `Register.hdl`, `PC.hdl`
- `RAM8.hdl`, `RAM64.hdl`

#### `3/b`

Expanded memory modules:

- `RAM512.hdl`, `RAM4K.hdl`, `RAM16K.hdl`

### `4` – Hack Assembly Programs

- `Fill.asm`
- `Mult.asm`

### `6` – Hack Machine Code Outputs

Compiled `.hack` binaries:

- `Add.hack`, `MaxL.hack`, `Mult.hack`, `RectL.hack`

### `7` – MIPS Practice and Tests

- `mips1.asm` to `mips4.asm`
- `q5.txt`, `q6.txt`
- `7_Tests/` test inputs and helper files

## Suggested Workflow

1. Implement each unit in order (`1` → `2` → `3` ...).
2. Verify each HDL chip in your hardware simulator before moving on.
3. Keep source and output files in the same numbered unit folder.
4. Use test files in `7/7_Tests` for validation where applicable.