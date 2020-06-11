//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
    parameter CLK_PERIOD = 10;
    reg clk;
    reg rst;
    reg direction;
    reg enable;
    wire [7:0] count;
    
    initial begin
    	$dumpfile("dump.vcd");
    	$dumpvars;
        clk = 1'b0;
        forever
        	#(CLK_PERIOD/2) clk=~clk;
     end
    
     initial begin
       rst       = 0;
       enable    = 0;
       direction = 1;
       #(5*CLK_PERIOD)
       rst       = 1;
       #(5*CLK_PERIOD)
       rst       = 0;
       #(5*CLK_PERIOD)
       enable    = 1;
       #(15*CLK_PERIOD)
       direction  = 0;
       #(15*CLK_PERIOD)
       rst       = 1;
       #(5*CLK_PERIOD)
       rst       = 0;
     end
     
     counter top (rst,enable,direction,clk,count);
     
     initial #600 $finish;

 
endmodule 
