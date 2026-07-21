module tb();
reg clk, rst;
reg [3:0] D;
wire [3:0] Q;
  register4 uut (  .clk(clk),  .rst(rst), .D(D), .Q(Q) );
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, tb);
end
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    rst = 1;
    D = 4'b0000;
    #10;
    rst = 0;
    D = 4'b0001;
    #10;
    D = 4'b1010;
    #10;
    D = 4'b1111;
    #10;
    D = 4'b0101;
    #10;
    rst = 1;
    #10;
    rst = 0;
    D = 4'b1100;
    #10;
    $finish;
end endmodule