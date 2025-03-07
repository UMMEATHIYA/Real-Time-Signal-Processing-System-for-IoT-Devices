module fir_filter (
    input wire clk,
    input wire reset,
    input wire signed [15:0] data_in,
    output reg signed [15:0] data_out
);
    // Filter coefficients (example values for low-pass filtering)
    reg signed [15:0] coeff[0:3] = '{16'd3, 16'd7, 16'd7, 16'd3};
    
    // Shift register for input samples
    reg signed [15:0] shift_reg[0:3];
    
    integer i;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset all registers
            for (i = 0; i < 4; i = i + 1) begin
                shift_reg[i] <= 16'd0;
            end
            data_out <= 16'd0;
        end else begin
            // Shift input data
            for (i = 3; i > 0; i = i - 1) begin
                shift_reg[i] <= shift_reg[i - 1];
            end
            shift_reg[0] <= data_in;

            // Perform FIR filtering (Multiply-Accumulate)
            data_out <= (shift_reg[0] * coeff[0]) + 
                        (shift_reg[1] * coeff[1]) + 
                        (shift_reg[2] * coeff[2]) + 
                        (shift_reg[3] * coeff[3]);
        end
    end
endmodule
