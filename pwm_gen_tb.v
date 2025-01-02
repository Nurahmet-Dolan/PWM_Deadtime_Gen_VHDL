`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 08:43:59 PM
// Design Name: 
// Module Name: pwm_gen_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwm_gen_tb;
    reg clk;
    reg rst;
    wire pwm_gen_out;
    
    pwm_gen dut (
    .clk(clk),
    .rst(rst),
    .pwm_gen_out(pwm_gen_out));
    
initial begin
    clk = 0;
    rst = 1;
    #500;
    rst = 0;
end 

always #2.5 clk = ~clk;

endmodule
