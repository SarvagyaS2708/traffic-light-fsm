module traffic_light(input clk, input reset, output reg [1:0] state);

  parameter RED    = 2'b00;
  parameter GREEN  = 2'b01;
  parameter YELLOW = 2'b10;

  always @(posedge clk) begin
    if (reset)
      state <= RED;
    else begin
      case(state)
        RED:    state <= GREEN;   // Red ke baad Green (chalne ka signal)
        GREEN:  state <= YELLOW;  // Green ke baad Yellow (warning)
        YELLOW: state <= RED;     // Yellow ke baad wapas Red
        default: state <= RED;    // safety ke liye default case
      endcase
    end
  end

endmodule