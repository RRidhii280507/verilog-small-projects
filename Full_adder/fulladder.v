//full adder 
module full_adder(a,b,cin,s,carry);
input a, b,cin;
output s,carry;
assign s=a^b^cin;
assign carry= (a&b)|(cin&(a^b));
endmodule