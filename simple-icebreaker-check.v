`default_nettype none

module top(
    input CLK,
    input BTN_N,
    output LEDG_N,
    output LEDR_N
);
    
reg [29:0] counter;

assign LEDG_N = counter[26];
assign LEDR_N = counter[25];

always @(posedge CLK or negedge BTN_N) begin
    if (!BTN_N) begin
        counter <= 0;
    end else begin
        counter <= counter + 1;
    end
end

endmodule //top

`default_nettype wire

