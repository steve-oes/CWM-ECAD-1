//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

module top_tb;

    // Inputs
    reg [2:0] a;
    reg [2:0] b;
    reg enable;
    reg clock;

    // Outputs
    wire [5:0] p;

    // Variables
    integer j,k;

    // Instantiate the Unit Under Test (UUT)
    top uut (
    	.clk(clock),
    	.en(enable),
        .z(p), 
        .a(a), 
        .b(b) 
    );

    initial clock = 0;
    initial enable = 1;
    always #5 clock = ~clock;

    initial
    begin
        a=0;
        b=0;
        for (j=1; j<10; j=j+1)
            for (k=1; k<11; k=k+1)
                begin
                    a=j;
                    b=k;
                    #20 $display("%d * %d = %d", a, b, p);
                end
    $finish;
    end      
endmodule