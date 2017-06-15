module myand(o,a,b); /*Basic code*/
    output o;
    input a,b;
    and and1(o,a,b);
endmodule
module tb_myand(); /*test bench generation*/
    reg p,q;
    wire z;
    myand myand1(z,p,q);
    initial  
    begin      /*Instantiation*/
    p=1'b0;q=1'b0;
    #10 p=1'b1;q=1'b0;
    #10 q=1'b1;p=1'b0; 
    #10 p=1'b1;q=1'b1;
    #10 p=1'b0;q=1'b0;
    $monitor("$time=%d,z=%b,p=%b,q=%b",$time,z,p,q);
end
endmodule

