module decoder(F,A,B);
    output F[0:3];
    input A,B;
   assign F[0]=A&B;
   assign F[1]=(~A)&B;
   assign F[2]=A&(~B);
   assign F[3]=(~A)&(~B);
    
endmodule

module tb_decoder();
    reg A,B;
    wire F[0:3];
    decoder d1(F,A,B);
    
    initial 
    begin
        #10 A=1'b0;B=1'b0;
        #10 A=1'b0;B=1'b1;
        #10 A=1'b1;B=1'b0;
        #10 A=1'b1;B=1'b1;
        #10 A=1'b0;B=1'b0;
   end 
   endmodule     
