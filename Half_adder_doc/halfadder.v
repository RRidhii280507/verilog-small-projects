module halfadder (
    a,b,s,c
);
input a ,b;
output s,c;
  assign s=a^b;
  assign c=a&b;  
endmodule //module half_adder (
//     input  in1,
//     input  in2,
//     output s,
//     output c
// );
//     assign s = in1 ^ in2;
//     assign c = in1 & in2;
// endmodule
