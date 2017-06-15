module encoder(d, a, b, c);

input [0:7]d;
output a,b,c;

or or1(a,d[4],d[5],d[6],d[7]);
or or2(b,d[3],d[2],d[6],d[7]);
or or3(c,d[1],d[3],d[5],d[7]);

endmodule

module tb_encoder;

reg [0:7]d;
wire a,b,c;
encoder e1( d,a,b,c);

initial
 begin

#10 d=8'b10000000;
#10 d=8'b01000000;
#10 d=8'b00100000;
#10 d=8'b00010000;
#10 d=8'b00001000;
#10 d=8'b00000100;
#10 d=8'b00000010;
#10 d=8'b00000001;
#10$stop;

end
endmodule