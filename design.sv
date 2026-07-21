module dff(clk,rst,data_in,data_out);
  input clk,rst;
  input [7:0] data_in;
  output reg[7:0] data_out;
  
  always @(posedge clk) begin
    if (rst==1) begin
      data_out<=0;
    end
    else data_out<=data_in; // the generated data for data_in is pass to data_out
      end
    
  
endmodule
