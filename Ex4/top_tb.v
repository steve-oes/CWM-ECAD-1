//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_v();
    parameter CLK_PERIOD = 10;
    reg clk;
    reg rst;
    reg button;
    wire [2:0] throw;
    

    initial begin
       $dumpfile("dump.vcd");
       $dumpvars;
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end
    
     initial begin
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
       #80 $finish;
     end
     initial #260 button = 0;

    dice top (
     .clk (clk),
     .rst (rst),
     .button (button),
     .throw (throw)
     );
     
endmodule
