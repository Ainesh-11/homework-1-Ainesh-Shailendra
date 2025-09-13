`timescale 1ns/1ps

module tb_bin2gray;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] gray;

  bin2gray dut (.binary(binary), .gray(gray));

  initial begin
    $display("Time\tBinary\tGray");
    $monitor("%0t\t%b\t%b", $time, binary, gray);

    for (int i = 0; i < 16; i++) begin
      binary = i;
      #10;
    end

    $display("Test completed.");
    $stop;
  end

endmodule
