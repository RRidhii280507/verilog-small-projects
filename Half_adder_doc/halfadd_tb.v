`timescale 1ns/1ns
module halfadd_tb;
reg a,b;
wire s,c;
halfadder DUT (a,b,s,c);
initial begin
        $dumpfile("halfadd.vcd");
    $dumpvars(0, halfadd_tb);

    $monitor("time= %0d ,a=%b ,b=%b , sum=%b, carry=%b ", $time,a,b,s,c);
    a=0;b=0;
    #10 a=0;b=1;
    #10 a=1; b=0;
    #10 a=1;b=1;
    #10 $finish;
end
endmodule //`timescale 1ns/1ps

// module half_adder_tb;

//     // Testbench signals
//     reg  x;
//     reg  y;
//     wire sum_tb;
//     wire carry_tb;

//     // Instantiate DUT using NAMED port mapping
//     half_adder dut (
//         .in1(x),        // design port in1 connected to testbench signal x
//         .in2(y),        // design port in2 connected to testbench signal y
//         .s(sum_tb),     // design port s connected to sum_tb
//         .c(carry_tb)    // design port c connected to carry_tb
//     );

//     initial begin
//         $monitor("Time=%0t | x=%b y=%b | sum=%b carry=%b",
//                   $time, x, y, sum_tb, carry_tb);

//         x = 0; y = 0; #10;
//         x = 0; y = 1; #10;
//         x = 1; y = 0; #10;
//         x = 1; y = 1; #10;

//         #10 $finish;
//     end

// endmodule