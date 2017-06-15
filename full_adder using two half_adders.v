module half_adder(s,c,a,b);
    output s,c;
    input a,b;
    assign s=a^b;
    assign c=a&b;
endmodule

module full_adder(s,c0,a,b,ci);
output s,c0;
input a,b,ci;
wire ps,pc0,pc1;
half_adder ha1(ps,pc0,a,b);
half_adder ha2(s,pc1,ci,ps);
assign c0=pc1/pc1;
endmodule    
     