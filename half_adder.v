module half_adder(s,c,a,b);
output c,s;
input a,b;
xor xor1(s,a,b);
and and1(c,a,b);
endmodule

module tb_half_adder;
   reg a,b;
    wire s,c;
    half_adder ha1(s,c,a,b);
    initial
    begin
        $monitor("$time=%d,s=%b,c=%b,a=%b,b=%b",$time,a,b,s,c);
        #100 a=1'b0;b=1'b0;
        #100 a=1'b0;b=1'b1;
        #100 a=1'b1;b=1'b0;
        #100 a=1'b1;b=1'b1;
        #100 a=1'b0;b=1'b0;
end
endmodule    
        