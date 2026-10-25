module mux(
    input [3:0] CEO, 
    input [3:0] ME, 
    input [3:0] FRED, 
    input [3:0] JILL,
    input [1:0] Sel,
    input enable,
    output [3:0] output1

);

    assign output1 = enable ?(Sel == 2'b00  ? CEO :
                                Sel == 2'b01 ? ME :
                                Sel == 2'b10  ? FRED : 
                                Sel == 2'b11 ? JILL : 4'b0000)
                                : 4'b0000;
                 

endmodule

module demux(
    input [3:0] muxtodemux,
    input [1:0] Sel1,
    input enable,
    output [3:0] local_lib, 
    output [3:0] Fire, 
    output [3:0] School, 
    output [3:0] Rib
);

    assign local_lib = enable ? (Sel1 == 2'b00 ? muxtodemux : 4'b0000) : 4'b0000 ;
    assign Fire = enable ? (Sel1 == 2'b01 ? muxtodemux : 4'b0000) : 4'b0000 ;
    assign School = enable ? (Sel1 == 2'b10 ? muxtodemux : 4'b0000) : 4'b0000 ;
    assign Rib = enable ? (Sel1 == 2'b11 ? muxtodemux : 4'b0000) : 4'b0000 ;

endmodule

module top(

input [15:0] sw,
input btnL,
input btnU,
input btnC,
input btnD,
input btnR,
output [15:0] led

);

wire [3:0] connect;
wire [1:0] mult_sel;
wire [1:0] demult_sel;
assign mult_sel[0] = btnL;
assign mult_sel[1] = btnU;
assign demult_sel[0] = btnD;
assign demult_sel[1] = btnR;

mux aaa(
    .CEO(sw[3:0]),
    .ME(sw[7:4]),
    .FRED(sw[11:8]),
    .JILL(sw[15:12]),
    .Sel(mult_sel),
    .output1(connect),
    .enable(btnC)
);

demux aab(
    .muxtodemux(connect),
    .local_lib(led[3:0]),
    .Fire(led[7:4]),
    .School(led[11:8]),
    .Rib(led[15:12]),
    .Sel1(demult_sel),
    .enable(btnC)

);
endmodule
