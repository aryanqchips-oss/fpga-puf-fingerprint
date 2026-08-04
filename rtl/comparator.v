module comparator(

    input  wire [31:0] countA,
    input  wire [31:0] countB,

    output wire response

);

assign response = (countA > countB);

endmodule
