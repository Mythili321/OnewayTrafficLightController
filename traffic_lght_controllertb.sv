`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 11:51:04 AM
// Design Name: 
// Module Name: traffic_lght_controllertb
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


module traffic_lght_controllertb;
logic clk,reset;
logic [1:0] out; 
 traffic_light_controller dut (.clk(clk), .reset(reset), .out(out));
 initial begin 
 clk=0;
 forever #5 clk=~clk;
 end
 initial begin
 reset=1;
 #10;
 reset=0;
 #150;
 $finish;
 end
 
endmodule
