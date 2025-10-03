module light(
    input upstairs, downstairs,
    output light
);

    assign light = upstairs ^ downstairs;

endmodule