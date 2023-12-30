module ALU (
  input CLK,
  input [15:0] A,
  input [15:0 B,
  input [3:0] opcode,
  input Cin,
  output [15:0] Y,
  output Cout
);

  always @(posedge CLK)
  case (opcode)
    4'b0000: Y <= A + B; // Addition
    4'b0001: Y <= A - B; // Subtraction
    4'b0010: Y <= A * B; // Multiplication
    4'b0011: Y <= A / B; // Division
    4'b0100: Y <= A & B; // AND
    4'b0101: Y <= A | B; // OR
    4'b0110: Y <= A ^ B; // XOR
    4'b0111: Y <= ~B; // NOT
    4'b1000: Y <= A & ~B; // NAND
    4'b1001: Y <= A | ~B; // NOR
    4'b1010: Y <= A ^ ~B; // XNOR
    4'b1011: Y <= {A[14:0], Cin}; // Left shift
    4'b1100: Y <= {Cin, A[15:1]}; // Right shift
    4'b1101: Y <= {A[15:1], Cin}; // Rotate right
    default: Y <= 16'b0; // Default value
  endcase
  Cout <= (Y[15] ^ Cin); // Carry output

endmodule
