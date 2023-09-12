module halfadd(S,C,A,B);
    input A,B;
    output S,C;
    
    xor xor1(S,A,B);
    and and1(C,A,B);
endmodule

module main;
    reg A,B;
    wire S,C;
    
    halfadd half1(S,C,A,B);
    
    initial
        begin
            A=0;
            B=1;
            #5; // Wait 5 time units.
            $display("Sum = ",S);
            $display("Carry = ",C);
        end
endmodule
