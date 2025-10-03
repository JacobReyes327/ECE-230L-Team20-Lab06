module top(
    input [7:0] sw,
    output [5:0] led
);

    wire second_bit_carry_in;

    light light_inst(
        .upstairs(sw[0]),
        .downstairs(sw[1]),
        .light(led[0])
    );

    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );

    full_adder lsb(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(second_bit_carry_in)
    );

    full_adder msb(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(second_bit_carry_in),
        .Y(led[4]),
        .Cout(led[5])
    );


endmodule
