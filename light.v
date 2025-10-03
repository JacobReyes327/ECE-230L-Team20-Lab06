module light(
    input upstairs, downstairs,
    output Y
);

    assign Y = upstairs ^ downstairs;

endmodule
