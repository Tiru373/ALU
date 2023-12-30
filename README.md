

# Arithmetic Logic Unit (ALU) Verilog Module

This repository contains a Verilog module implementing an Arithmetic Logic Unit (ALU) that performs various arithmetic and logical operations.

## Module Description

The ALU module takes two 16-bit inputs, A and B, along with a 4-bit opcode and a carry-in signal. Based on the opcode provided, it executes various operations and produces a 16-bit output, Y, along with a carry-out signal.

## Operations Supported

The module supports the following operations based on the provided opcode:

- **Addition**: `Y <= A + B`
- **Subtraction**: `Y <= A - B`
- **Multiplication**: `Y <= A * B`
- **Division**: `Y <= A / B`
- **Bitwise AND**: `Y <= A & B`
- **Bitwise OR**: `Y <= A | B`
- **Bitwise XOR**: `Y <= A ^ B`
- **Bitwise NOT (Complement)**: `Y <= ~B`
- **Bitwise NAND**: `Y <= A & ~B`
- **Bitwise NOR**: `Y <= A | ~B`
- **Bitwise XNOR**: `Y <= A ^ ~B`
- **Left Shift**: `Y <= {A[14:0], Cin}`
- **Right Shift**: `Y <= {Cin, A[15:1]}`
- **Rotate Right**: `Y <= {A[15:1], Cin}`

## Input/Output Ports

- **Inputs**:
  - `CLK`: Clock signal
  - `A`, `B`: 16-bit input operands
  - `opcode`: 4-bit operation code
  - `Cin`: Carry-in signal

- **Outputs**:
  - `Y`: 16-bit output result
  - `Cout`: Carry-out signal

## How to Use

Explain how to integrate and use this module within a larger Verilog design or project. Include instructions on connecting inputs and retrieving outputs.

## Future Improvements

Optionally, mention any areas of improvement or features that could be added to enhance the functionality or efficiency of the ALU module.

