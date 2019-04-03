`timescale 1ns/1ps
module tb();

reg [3:0] in_test;

reg load_test;

reg clk_test;

reg cin_test;

wire [0:3] out_test;

initial begin
    $dumpfile("tb.lxt");
    $dumpvars(1,test);
end

//init load

initial load_test = 1;

always #80 load_test=~load_test;

//init clk

initial clk_test=1;

always #20 clk_test=~clk_test;

//init inputData

initial

begin

forever

begin

in_test=4'b0001;

cin_test=0;

#80 in_test=4'b00010;cin_test=1;

#160 in_test=4'b0011;cin_test=0;

#240 in_test=4'b0111;cin_test=1;

#320 in_test=4'b1010;cin_test=0;

end

End

sendShift UUT_register(.in(in_test), .cin(cin_test), .out(out_test), .clk(clk_test), .load(load_test));

endmodule
