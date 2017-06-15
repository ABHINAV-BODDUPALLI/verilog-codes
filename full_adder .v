module full_adder(s,co,a,b,ci);
    output s,co;
    input a,b,ci;
    wire p1,p2,p3;
    assign p1=a^b;
    assign p2=p1&ci;
    assign p3=a&b;
    assign co=p2/p3;
    assign s=p1^ci;
  endmodule
  
  module tb_full_adder();
  reg a,b,ci;
  wire s,co;
  
  full_adder fa1(s,co,a,b,ci);
   initial 
   begin
   #10 a=1'b0;b=1'b0;ci=1'b0;
   #10 a=1'b0;b=1'b0;ci=1'b1;
   #10 a=1'b0;b=1'b1;ci=1'b0;
   #10 a=1'b0;b=1'b1;ci=1'b1;
   #10 a=1'b1;b=1'b0;ci=1'b0;
   #10 a=1'b1;b=1'b0;ci=1'b1;
   #10 a=1'b1;b=1'b1;ci=1'b0;
   #10 a=1'b1;b=1'b1;ci=1'b1;
   #10$finish;
   
   end
   endmodule 