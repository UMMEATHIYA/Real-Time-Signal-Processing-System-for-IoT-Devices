`timescale 1ns / 1ps

module fir_filter_tb;
    reg clk;
    reg reset;
    reg signed [15:0] data_in;
    wire signed [15:0] data_out;

    // Instantiate the FIR filter module
    fir_filter uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Generate clock signal (50 MHz)
    always #10 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        data_in = 16'd0;
        #20 reset = 0;

        // Apply test inputs
        #20 data_in = 16'd10;
        #20 data_in = 16'd20;
        #20 data_in = 16'd30;
        #20 data_in = 16'd40;
        #20 data_in = 16'd50;
        #20 data_in = 16'd60;
        #100;

        // End simulation
        $stop;
    end
endmodule
