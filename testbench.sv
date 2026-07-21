module tb();

reg clk;
wire [3:0] count;
counter4 inst(clk, count);

initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, tb);
end

// Clock Generation
initial begin
    clk = 0;
    forever #5ns clk = ~clk;
end

// Simulation
initial begin
    #100ns;
    $finish;
end
endmodule