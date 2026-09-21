module tb;
  reg clk = 0;
  reg reset;
  wire [1:0] state;

  traffic_light uut(.clk(clk), .reset(reset), .state(state));

  always #5 clk = ~clk;

  initial begin
    reset = 1;
    #10 reset = 0;
    #100 $finish;
  end

  initial
    $monitor("Time=%0t state=%b", $time, state);
endmodule