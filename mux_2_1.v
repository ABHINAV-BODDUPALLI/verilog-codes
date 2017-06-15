module multiplexor_2_1(a,b,s,c);
    output c;
    input a,b,s;
    wire p1,p2;
    not n1(s1,s);
    and a1(p2,a,s1);
    and a2(p1,b,s);
    or or1(c,p1,p2);
 endmodule
 
 module tb_multiplexor_2_1();
 reg a,b,s;
 wire c;
 multiplexor_2_1 mux(a,b,s,c);

 initial 
 begin
       #10 a=1'b0;b=1'b0;s=1'b0;
       #10 a=1'b0;b=1'b0;s=1'b1;
       #10 a=1'b0;b=1'b1;s=1'b0;
       #10 a=1'b0;b=1'b1;s=1'b1;
       #10 a=1'b1;b=1'b0;s=1'b0;
       #10 a=1'b1;b=1'b0;s=1'b1;
       #10 a=1'b1;b=1'b1;s=1'b0;
       #10 a=1'b1;b=1'b1;s=1'b1;
       #10 a=1'b0;b=1'b0;s=1'b0;
       $monitor("a %b,b %b,s %b,c %b",s,c,a,b);
  end
  endmodule 