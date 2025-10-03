module full_adder(
    input A, B, Cin,
    output Y, Cout
);

    assign Y = A ^ B ^ C;
    assign Cout = (A & B) | (B & C) | (A & C);


endmodule

