module tb();
reg clk;reg rst;reg J;reg K;
wire Q;
jk_ff inst(clk, rst, J, K, Q);
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
    J = 0;
    K = 0;
    #10; rst = 0;
    @(posedge clk);
    J = 0;
    K = 0;
    @(posedge clk);
    J = 0;
    K = 1;
    @(posedge clk);
    J = 1;
    K = 0;
    @(posedge clk);
    J = 1;
    K = 1;
    @(posedge clk);
    J = 1;
    K = 1;
    @(posedge clk);
    J = 0;
    K = 0;
    #20; $finish;
end endmodule