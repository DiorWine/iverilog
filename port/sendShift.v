`timescale 1ns/1ps
module sendShift(
    Sin,
    Scin,
    Sout,
    Sclk,
    Sload
);

input [7:0] Sin;
input Sclk;
input Scin;
input Sload;
output reg [7:0] Sout;

always@(posedge Sclk) begin
        if(Sload)
            Sout <= Sin;
        else
            Sout <= {Sout[6:0],Scin};
    end

endmodule
