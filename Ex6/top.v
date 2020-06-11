//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 
// Student Name: Steve Sheard
// Date: 09-06-20
//
//
//  Description: In this exercise, you need to design a multiplexer between a dice and traffic 
//  lights, where the output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | dice
//   1  | traffic lights
//
//  inputs:
//           rst, clk, button,sel
//
//  outputs:
//           result[2:0]
//
//////////////////////////////////////////////////////////////////////////////////

module top (
	input sel,
	input clk,
	input rst,
	input button,
	output [2:0] out
	);
	
	wire [2:0] out,dice_out;
	
	assign out = sel?{red,amber,green}:dice_out;
	
	dice I1 (.rst(rst),.clk(clk),.button(button),.throw(dice_out));
	traffic_lights I2 (clk,red,amber,green);
	
endmodule
	