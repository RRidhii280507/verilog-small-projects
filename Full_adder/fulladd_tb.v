`timescale 1ns/1ps
module fulladd_tb;
// reg x,y,c1;
reg [2:0] D;
wire sum,c2;
full_adder dut (.a(D[2]),.b(D[1]),.cin(D[0]),.s(sum),.carry(c2));
initial 
begin 
        $monitor("time=%0t x=%b y=%b c1=%b sum=%b c2=%b", $time ,D[2],D[1],D[0],sum,c2);
    D=3'b000;
    repeat (7)
    #10 D=D+3'b001;
    // x=0; y=0; c1=0; #10
    // x=0; y=0; c1=1; #10
    // x=0; y=1; c1=0; #10
    // x=0; y=1; c1=1; #10
    // x=1; y=0; c1=0; #10
    // x=1; y=0; c1=1; #10
    // x=1; y=1; c1=0; #10
    // x=1; y=1; c1=1; #10
    #10 $finish;
end
endmodule 