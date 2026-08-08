module vending_machine (
    input clk,
    input reset,
    input coin5,
    input coin10,
    output reg dispense,
    output reg [4:0] change
);

reg [4:0] balance;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        balance  <= 0;
        dispense <= 0;
        change   <= 0;
    end
    else begin
        dispense <= 0;
        change   <= 0;

        // Accept coins
        if (coin5)
            balance <= balance + 5;

        if (coin10)
            balance <= balance + 10;

        // Product price = 15
        if ((balance >= 15) || 
            (coin5 && balance >= 10) ||
            (coin10 && balance >= 5)) begin

            dispense <= 1;

            if (coin5 && balance >= 10)
                change <= balance + 5 - 15;
            else if (coin10 && balance >= 5)
                change <= balance + 10 - 15;
            else
                change <= balance - 15;

            balance <= 0;
        end
    end
end

endmodule