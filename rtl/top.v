module top(

    input wire clk,
    input wire reset,

    output wire response

);

wire osc;

wire [31:0] count;

ring_oscillator ro(

    .enable(1'b1),

    .osc_out(osc)

);

counter counter0(

    .clk(clk),

    .reset(reset),

    .enable(1'b1),

    .count(count)

);

comparator cmp(

    .countA(count),

    .countB(32'd100),

    .response(response)

);

endmodule
