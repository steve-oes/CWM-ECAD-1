//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name: Steve Sheard
// Date: 09-06-20
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

module top_tb();
    parameter CLK_PERIOD = 10;
    reg clk;
    wire red, amber,green;
    
    initial begin
       $dumpfile("dump.vcd");
       $dumpvars;
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end
    
     initial #200 $finish;

    traffic_lights top(clk,red,amber,green);

endmodule