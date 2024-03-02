module counter #(parameter WIDTH=8) (input clk, input rst_n, output [WIDTH-1:0] out);
  
  logic [WIDTH-1:0] out_b;
  
  always@(posedge clk) begin //synchronous reset
    if(rst_n == 0) begin
      out_b <= 'd0;
    end else begin
      out_b <= out_b + 'd1;
    end
  end
  
  assign out = out_b;
  
endmodule
