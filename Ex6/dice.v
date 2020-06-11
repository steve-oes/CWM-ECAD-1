//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////

module dice (clk, rst, button, throw);
	input clk, rst, button;
	output reg[2:0] throw;
	
	always @(posedge rst)
		if (rst) throw = 3'b001;
	always @(posedge clk)
		throw = (!rst&button)?throw+1:throw;
	always @(throw)
		if ((throw==3'b000)||(throw==3'b111)) throw = 3'b001;
		
endmodule
		