module ALU_test;
  reg CLK;
  reg [15:] A, B;
  reg [3:0] opcode;
  reg Cin;
  wire15:0];
  wire Cout;

  ALU UUT (
    .CLK(CLK),
    .A(A),
    .B(B),
    .opcode(opcode),
    .Cin(Cin),
    .Y(Y),
    .Cout(Cout)
  );

  initial begin
    // Initialize inputs
    CLK = 1'b0;
    A = 16'b0;
    B = 16'b0;
    opcode = 4'b0000;
    Cin = 1'b0;

    // Run simulation for 100 clock cycles
    for (int i = 0; i < 100; i = i + 1) begin
      // Apply inputs
      CLK = ~CLK;
      A = A + 16'b1;
      B = B + 16'b1;
      opcode = opcode + 1;
      Cin = Cin ^ 1'b1;

      // Evaluate outputs
      #10;

      // Check results
      if (i == 20) begin
        assert (Y == 16'b1000_0000_0000_0001);
        assert (Cout == 1'b0);
      end else if (i == 21) begin
        assert (Y == 16'b0);
        assert (Cout == 1'b1);
      end
    end

    // Finish simulation
    $finish;
  end

endmodule
