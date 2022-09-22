module cistern
    (
        input [7:0] floater,
        output reg [3:0] NumHex,
    );
always @(floater) 
    begin
        case(floater)
        8'b11111111: NumHex = 4'b1000;
        8'b01111111: NumHex = 4'b0111;
        8'b00111111: NumHex = 4'b0110;
        8'b00011111: NumHex = 4'b0101;
        8'b00001111: NumHex = 4'b0100;
        8'b00000111: NumHex = 4'b0011;
        8'b00000011: NumHex = 4'b1010;
        8'b00000001: NumHex = 4'b0001;
        8'b00000000: NumHex = 4'b0000;
        default: NumHex = 4'b1110;
        endcase
    end
endmodule    