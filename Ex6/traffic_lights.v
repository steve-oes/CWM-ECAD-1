//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////

module traffic_lights (
	input clk,
	output red,
	output amber,
	output green
	);
	
	reg red, amber, green;
	
	always @(posedge clk)
    	case ({red, amber, green})
		3'b100  : {red, amber, green} <= 3'b110;
        3'b110  : {red, amber, green} <= 3'b001;
        3'b001  : {red, amber, green} <= 3'b010;
        3'b010  : {red, amber, green} <= 3'b100;
        default : {red, amber, green} <= 3'b001; 
    endcase
    
endmodule