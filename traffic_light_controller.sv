`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2025 11:30:13 AM
// Design Name: 
// Module Name: traffic_light_controller
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


module traffic_light_controller(
    input clk,
    input reset,
    output logic [1:0] out
    );
    typedef enum logic [1:0] {
    red,green,yellow} state;
    
    state current,next;
    logic [3:0] timer;
    
    always @ (posedge clk or posedge reset)
    begin
    if (reset) begin
    current<=red;
    timer<=0;
    end else begin
    if (timer==3) begin
    current<=next;
    timer<=0;
    end
    else 
    timer<=timer+1;
    end
    end
    always_comb begin 
    case(current)
    red: next=green;
    green:next=yellow;
    yellow: next=red;
    endcase 
    end 
    assign out=current;
endmodule
