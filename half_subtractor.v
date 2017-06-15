module half_subtractor(d,bo,a,b);
    output d,bo;
    input a,b;
    wire a1;
    xor xor1(d,a,b);
    not n1(a1,a);
    and and1(bo,a1,b);
endmodule

module tb_half_subtractor();
    reg a,b;
    wire d,bo;
    half_subtractor hs1(d,bo,a,b);
    
    initial 
    begin
            a=1'b0;b=1'b0;
        #10 a=1'b0;b=1'b1;
        #10 a=1'b1;b=1'b0;
        #10 a=1'b1;b=1'b1;
        #10 a=1'b0;b=1'b0;
        
        $monitor("a %b,b%b,d %b,bo %b",a,b,d,bo);
    end
endmodule
    