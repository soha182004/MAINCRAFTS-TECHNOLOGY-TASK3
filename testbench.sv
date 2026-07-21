module tb();
  reg clk,rst;
  reg[7:0] data_in;
  wire[7:0] data_out;
       
  dff inst(clk,rst,data_in,data_out);
   initial begin 
           $dumpfile ("test.vcd");
     $dumpvars(0, tb);
         end
       
       initial begin
         clk=0;
         forever #5ns clk=~clk;
           end
           
           initial begin
             rst=1;
             #5ns;
             rst=0;
             repeat(5) @(posedge clk) begin
               data_in=$random;
                 end
             
             #150ns; 
             $finish;
           end      
endmodule
