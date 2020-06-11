//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_v();
    parameter CLK_PERIOD = 10;
    reg sel,clk;
    reg rst;
    reg button;
    wire [2:0] result;
    

    initial begin
       $dumpfile("dump.vcd");
       $dumpvars;
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end
    
     initial begin
       sel = 0;
       rst = 0;
       button = 0;
       #6
       rst = 1;
       #4
       rst = 0;
       #60
       button = 1;
       #80
       rst = 1;
       #10
       rst = 0;
       #10
       button = 0;
       #20 button = 1;
       #80 sel = 1;
       #150 $finish;
     end
     initial #260 button = 0;

    top DUT (
     .sel (sel),
     .clk (clk),
     .rst (rst),
     .button (button),
     .out (result)
     );
     
endmodule
