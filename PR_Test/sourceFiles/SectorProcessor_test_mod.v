// Test bench generated by generator_verilog.py

`timescale 1ns / 1ps

module SectorProcessor_test();

reg clk;
reg reset;

initial begin
  reset = 1'b1;
  clk   = 1'b1;
end

initial begin
  #1080
  reset = 1'b0;
end

reg en_proc = 1'b0;
always @(posedge clk) begin
  if (reset) en_proc = 1'b0;
  else       en_proc = 1'b1;
end

always begin
  #2.5 clk = ~clk;
end

reg [2:0] bx_in_ProjectionRouter;
initial bx_in_ProjectionRouter = 3'b110;
always begin
  #540 bx_in_ProjectionRouter <= bx_in_ProjectionRouter + 1'b1;
end
wire[2:0] bx_out_ProjectionRouter;

reg TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_din;
reg TPROJ_L1L2XXG_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L1L2XXG_L3PHIC_nentries_0_V_din;
reg TPROJ_L1L2XXG_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L1L2XXG_L3PHIC_nentries_1_V_din;
wire TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L1L2XXG_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L1L2XXG_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L1L2XXG_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L1L2XXG_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Gnentries0 = 8'b00001110; // 13
reg[7:0] Gnentries1 = 8'b00001001; // 9
assign TPROJ_L1L2XXG_L3PHIC_nentries_0_V_din = Gnentries0;
assign TPROJ_L1L2XXG_L3PHIC_nentries_1_V_din = Gnentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L1L2G_L3PHIC_04_mod.dat")
) TPROJ_L1L2XXG_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L1L2XXG_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L1L2XXG_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L1L2XXG_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L1L2XXG_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L1L2XXG_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L1L2XXG_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

reg TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_din;
reg TPROJ_L1L2XXH_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L1L2XXH_L3PHIC_nentries_0_V_din;
reg TPROJ_L1L2XXH_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L1L2XXH_L3PHIC_nentries_1_V_din;
wire TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L1L2XXH_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L1L2XXH_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L1L2XXH_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L1L2XXH_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Hnentries0 = 8'b00001010; // 10
reg[7:0] Hnentries1 = 8'b00000100; // 4
assign TPROJ_L1L2XXH_L3PHIC_nentries_0_V_din = Hnentries0;
assign TPROJ_L1L2XXH_L3PHIC_nentries_1_V_din = Hnentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L1L2H_L3PHIC_04_mod.dat")
) TPROJ_L1L2XXH_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L1L2XXH_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L1L2XXH_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L1L2XXH_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L1L2XXH_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L1L2XXH_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L1L2XXH_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

reg TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_din;
reg TPROJ_L5L6XXB_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L5L6XXB_L3PHIC_nentries_0_V_din;
reg TPROJ_L5L6XXB_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L5L6XXB_L3PHIC_nentries_1_V_din;
wire TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L5L6XXB_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L5L6XXB_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L5L6XXB_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L5L6XXB_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Bnentries0 = 8'b00000000; // 0
reg[7:0] Bnentries1 = 8'b00000000; // 0
assign TPROJ_L5L6XXB_L3PHIC_nentries_0_V_din = Bnentries0;
assign TPROJ_L5L6XXB_L3PHIC_nentries_1_V_din = Bnentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L5L6B_L3PHIC_04_mod.dat")
) TPROJ_L5L6XXB_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L5L6XXB_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L5L6XXB_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L5L6XXB_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L5L6XXB_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L5L6XXB_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L5L6XXB_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

reg TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_din;
reg TPROJ_L5L6XXC_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L5L6XXC_L3PHIC_nentries_0_V_din;
reg TPROJ_L5L6XXC_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L5L6XXC_L3PHIC_nentries_1_V_din;
wire TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L5L6XXC_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L5L6XXC_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L5L6XXC_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L5L6XXC_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Cnentries0 = 8'b00000000; // 0
reg[7:0] Cnentries1 = 8'b00000000; // 0
assign TPROJ_L5L6XXC_L3PHIC_nentries_0_V_din = Cnentries0;
assign TPROJ_L5L6XXC_L3PHIC_nentries_1_V_din = Cnentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L5L6C_L3PHIC_04_mod.dat")
) TPROJ_L5L6XXC_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L5L6XXC_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L5L6XXC_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L5L6XXC_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L5L6XXC_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L5L6XXC_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L5L6XXC_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

reg TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_din;
reg TPROJ_L5L6XXD_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L5L6XXD_L3PHIC_nentries_0_V_din;
reg TPROJ_L5L6XXD_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L5L6XXD_L3PHIC_nentries_1_V_din;
wire TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L5L6XXD_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L5L6XXD_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L5L6XXD_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L5L6XXD_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Dnentries0 = 8'b00000001; // 1
reg[7:0] Dnentries1 = 8'b00000001; // 1
assign TPROJ_L5L6XXD_L3PHIC_nentries_0_V_din = Dnentries0;
assign TPROJ_L5L6XXD_L3PHIC_nentries_1_V_din = Dnentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L5L6D_L3PHIC_04_mod.dat")
) TPROJ_L5L6XXD_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L5L6XXD_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L5L6XXD_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L5L6XXD_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L5L6XXD_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L5L6XXD_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L5L6XXD_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

reg TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_din;
reg TPROJ_L1L2XXF_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L1L2XXF_L3PHIC_nentries_0_V_din;
reg TPROJ_L1L2XXF_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L1L2XXF_L3PHIC_nentries_1_V_din;
wire TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L1L2XXF_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L1L2XXF_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L1L2XXF_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L1L2XXF_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Fnentries0 = 8'b00000000; // 0
reg[7:0] Fnentries1 = 8'b00000000; // 0
assign TPROJ_L1L2XXF_L3PHIC_nentries_0_V_din = Fnentries0;
assign TPROJ_L1L2XXF_L3PHIC_nentries_1_V_din = Fnentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L1L2F_L3PHIC_04_mod.dat")
) TPROJ_L1L2XXF_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L1L2XXF_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L1L2XXF_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L1L2XXF_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L1L2XXF_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L1L2XXF_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L1L2XXF_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

reg TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_din;
reg TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_din;
reg TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_din;
wire TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Jnentries0 = 8'b00000001; // 1
reg[7:0] Jnentries1 = 8'b00000000; // 0
assign TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_din = Jnentries0;
assign TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_din = Jnentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L1L2J_L3PHIC_04_mod.dat")
) TPROJ_L1L2XXJ_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

reg TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_wea;
wire[7:0] TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_din;
reg TPROJ_L1L2XXI_L3PHIC_nentries_0_V_we;
wire[7:0] TPROJ_L1L2XXI_L3PHIC_nentries_0_V_din;
reg TPROJ_L1L2XXI_L3PHIC_nentries_1_V_we;
wire[7:0] TPROJ_L1L2XXI_L3PHIC_nentries_1_V_din;
wire TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_enb;
wire[7:0] TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_dout;
wire[7:0] TPROJ_L1L2XXI_L3PHIC_nentries_0_V_dout;
wire[7:0] TPROJ_L1L2XXI_L3PHIC_nentries_1_V_dout;

initial begin
  TPROJ_L1L2XXI_L3PHIC_nentries_0_V_we = 1'b1;
  TPROJ_L1L2XXI_L3PHIC_nentries_1_V_we = 1'b1;
end

reg[7:0] Inentries0 = 8'b00000010; // 2
reg[7:0] Inentries1 = 8'b00000000; // 0
assign TPROJ_L1L2XXI_L3PHIC_nentries_0_V_din = Inentries0;
assign TPROJ_L1L2XXI_L3PHIC_nentries_1_V_din = Inentries1;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("/mnt/scratch/djc448/firmware-tests/PR_Test/sourceFiles/TrackletProjections_TPROJ_L1L2I_L3PHIC_04_mod.dat")
) TPROJ_L1L2XXI_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_wea),
  .addra(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_writeaddr),
  .dina(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_din),
  .nent_we0(TPROJ_L1L2XXI_L3PHIC_nentries_0_V_we),
  .nent_i0(TPROJ_L1L2XXI_L3PHIC_nentries_0_V_din),
  .nent_we1(TPROJ_L1L2XXI_L3PHIC_nentries_1_V_we),
  .nent_i1(TPROJ_L1L2XXI_L3PHIC_nentries_1_V_din),
  .enb(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_enb),
  .addrb(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_readaddr),
  .doutb(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_dout),
  .nent_o0(TPROJ_L1L2XXI_L3PHIC_nentries_0_V_dout),
  .nent_o1(TPROJ_L1L2XXI_L3PHIC_nentries_1_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC20_dataarray_data_V_ena;
wire VMPROJ_L3PHIC20_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC20_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC20_dataarray_data_V_din;
wire VMPROJ_L3PHIC20_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC20_nentries_0_V_din;
wire VMPROJ_L3PHIC20_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC20_nentries_1_V_din;
wire VMPROJ_L3PHIC20_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC20_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC20_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC20_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC20_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC20 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC20_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC20_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC20_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC20_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC20_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC20_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC20_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC20_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC20_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC20_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC20_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC20_nentries_1_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC17_dataarray_data_V_ena;
wire VMPROJ_L3PHIC17_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC17_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC17_dataarray_data_V_din;
wire VMPROJ_L3PHIC17_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC17_nentries_0_V_din;
wire VMPROJ_L3PHIC17_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC17_nentries_1_V_din;
wire VMPROJ_L3PHIC17_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC17_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC17_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC17_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC17_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC17 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC17_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC17_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC17_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC17_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC17_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC17_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC17_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC17_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC17_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC17_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC17_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC17_nentries_1_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC22_dataarray_data_V_ena;
wire VMPROJ_L3PHIC22_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC22_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC22_dataarray_data_V_din;
wire VMPROJ_L3PHIC22_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC22_nentries_0_V_din;
wire VMPROJ_L3PHIC22_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC22_nentries_1_V_din;
wire VMPROJ_L3PHIC22_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC22_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC22_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC22_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC22_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC22 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC22_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC22_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC22_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC22_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC22_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC22_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC22_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC22_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC22_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC22_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC22_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC22_nentries_1_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC19_dataarray_data_V_ena;
wire VMPROJ_L3PHIC19_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC19_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC19_dataarray_data_V_din;
wire VMPROJ_L3PHIC19_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC19_nentries_0_V_din;
wire VMPROJ_L3PHIC19_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC19_nentries_1_V_din;
wire VMPROJ_L3PHIC19_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC19_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC19_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC19_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC19_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC19 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC19_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC19_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC19_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC19_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC19_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC19_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC19_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC19_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC19_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC19_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC19_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC19_nentries_1_V_dout),
  .regceb(1'b1)
);

wire AP_L3PHIC_dataarray_data_V_ena;
wire AP_L3PHIC_dataarray_data_V_wea;
wire[9:0] AP_L3PHIC_dataarray_data_V_writeaddr;
wire[59:0] AP_L3PHIC_dataarray_data_V_din;
wire AP_L3PHIC_nentries_0_V_we;
wire[7:0] AP_L3PHIC_nentries_0_V_din;
wire AP_L3PHIC_nentries_1_V_we;
wire[7:0] AP_L3PHIC_nentries_1_V_din;
wire AP_L3PHIC_nentries_2_V_we;
wire[7:0] AP_L3PHIC_nentries_2_V_din;
wire AP_L3PHIC_nentries_3_V_we;
wire[7:0] AP_L3PHIC_nentries_3_V_din;
wire AP_L3PHIC_nentries_4_V_we;
wire[7:0] AP_L3PHIC_nentries_4_V_din;
wire AP_L3PHIC_nentries_5_V_we;
wire[7:0] AP_L3PHIC_nentries_5_V_din;
wire AP_L3PHIC_nentries_6_V_we;
wire[7:0] AP_L3PHIC_nentries_6_V_din;
wire AP_L3PHIC_nentries_7_V_we;
wire[7:0] AP_L3PHIC_nentries_7_V_din;
wire AP_L3PHIC_dataarray_data_V_enb;
wire[9:0] AP_L3PHIC_dataarray_data_V_readaddr;
wire[59:0] AP_L3PHIC_dataarray_data_V_dout;
wire[7:0] AP_L3PHIC_nentries_0_V_dout;
wire[7:0] AP_L3PHIC_nentries_1_V_dout;
wire[7:0] AP_L3PHIC_nentries_2_V_dout;
wire[7:0] AP_L3PHIC_nentries_3_V_dout;
wire[7:0] AP_L3PHIC_nentries_4_V_dout;
wire[7:0] AP_L3PHIC_nentries_5_V_dout;
wire[7:0] AP_L3PHIC_nentries_6_V_dout;
wire[7:0] AP_L3PHIC_nentries_7_V_dout;

Memory #(
  .RAM_WIDTH(60),
  .RAM_DEPTH(1024),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) AP_L3PHIC (
  .clka(clk),
  .clkb(clk),
  .wea(AP_L3PHIC_dataarray_data_V_wea),
  .addra(AP_L3PHIC_dataarray_data_V_writeaddr),
  .dina(AP_L3PHIC_dataarray_data_V_din),
  .nent_we0(AP_L3PHIC_nentries_0_V_we),
  .nent_i0(AP_L3PHIC_nentries_0_V_din),
  .nent_we1(AP_L3PHIC_nentries_1_V_we),
  .nent_i1(AP_L3PHIC_nentries_1_V_din),
  .nent_we2(AP_L3PHIC_nentries_2_V_we),
  .nent_i2(AP_L3PHIC_nentries_2_V_din),
  .nent_we3(AP_L3PHIC_nentries_3_V_we),
  .nent_i3(AP_L3PHIC_nentries_3_V_din),
  .nent_we4(AP_L3PHIC_nentries_4_V_we),
  .nent_i4(AP_L3PHIC_nentries_4_V_din),
  .nent_we5(AP_L3PHIC_nentries_5_V_we),
  .nent_i5(AP_L3PHIC_nentries_5_V_din),
  .nent_we6(AP_L3PHIC_nentries_6_V_we),
  .nent_i6(AP_L3PHIC_nentries_6_V_din),
  .nent_we7(AP_L3PHIC_nentries_7_V_we),
  .nent_i7(AP_L3PHIC_nentries_7_V_din),
  .enb(AP_L3PHIC_dataarray_data_V_enb),
  .addrb(AP_L3PHIC_dataarray_data_V_readaddr),
  .doutb(AP_L3PHIC_dataarray_data_V_dout),
  .nent_o0(AP_L3PHIC_nentries_0_V_dout),
  .nent_o1(AP_L3PHIC_nentries_1_V_dout),
  .nent_o2(AP_L3PHIC_nentries_2_V_dout),
  .nent_o3(AP_L3PHIC_nentries_3_V_dout),
  .nent_o4(AP_L3PHIC_nentries_4_V_dout),
  .nent_o5(AP_L3PHIC_nentries_5_V_dout),
  .nent_o6(AP_L3PHIC_nentries_6_V_dout),
  .nent_o7(AP_L3PHIC_nentries_7_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC24_dataarray_data_V_ena;
wire VMPROJ_L3PHIC24_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC24_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC24_dataarray_data_V_din;
wire VMPROJ_L3PHIC24_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC24_nentries_0_V_din;
wire VMPROJ_L3PHIC24_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC24_nentries_1_V_din;
wire VMPROJ_L3PHIC24_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC24_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC24_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC24_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC24_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC24 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC24_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC24_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC24_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC24_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC24_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC24_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC24_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC24_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC24_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC24_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC24_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC24_nentries_1_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC23_dataarray_data_V_ena;
wire VMPROJ_L3PHIC23_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC23_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC23_dataarray_data_V_din;
wire VMPROJ_L3PHIC23_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC23_nentries_0_V_din;
wire VMPROJ_L3PHIC23_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC23_nentries_1_V_din;
wire VMPROJ_L3PHIC23_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC23_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC23_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC23_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC23_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC23 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC23_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC23_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC23_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC23_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC23_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC23_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC23_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC23_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC23_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC23_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC23_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC23_nentries_1_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC18_dataarray_data_V_ena;
wire VMPROJ_L3PHIC18_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC18_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC18_dataarray_data_V_din;
wire VMPROJ_L3PHIC18_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC18_nentries_0_V_din;
wire VMPROJ_L3PHIC18_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC18_nentries_1_V_din;
wire VMPROJ_L3PHIC18_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC18_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC18_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC18_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC18_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC18 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC18_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC18_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC18_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC18_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC18_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC18_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC18_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC18_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC18_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC18_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC18_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC18_nentries_1_V_dout),
  .regceb(1'b1)
);

wire VMPROJ_L3PHIC21_dataarray_data_V_ena;
wire VMPROJ_L3PHIC21_dataarray_data_V_wea;
wire[7:0] VMPROJ_L3PHIC21_dataarray_data_V_writeaddr;
wire[20:0] VMPROJ_L3PHIC21_dataarray_data_V_din;
wire VMPROJ_L3PHIC21_nentries_0_V_we;
wire[7:0] VMPROJ_L3PHIC21_nentries_0_V_din;
wire VMPROJ_L3PHIC21_nentries_1_V_we;
wire[7:0] VMPROJ_L3PHIC21_nentries_1_V_din;
wire VMPROJ_L3PHIC21_dataarray_data_V_enb;
wire[7:0] VMPROJ_L3PHIC21_dataarray_data_V_readaddr;
wire[20:0] VMPROJ_L3PHIC21_dataarray_data_V_dout;
wire[7:0] VMPROJ_L3PHIC21_nentries_0_V_dout;
wire[7:0] VMPROJ_L3PHIC21_nentries_1_V_dout;

Memory #(
  .RAM_WIDTH(21),
  .RAM_DEPTH(256),
  .RAM_PERFORMANCE("HIGH_PERFORMANCE"),
  .HEX(0),
  .INIT_FILE("")
) VMPROJ_L3PHIC21 (
  .clka(clk),
  .clkb(clk),
  .wea(VMPROJ_L3PHIC21_dataarray_data_V_wea),
  .addra(VMPROJ_L3PHIC21_dataarray_data_V_writeaddr),
  .dina(VMPROJ_L3PHIC21_dataarray_data_V_din),
  .nent_we0(VMPROJ_L3PHIC21_nentries_0_V_we),
  .nent_i0(VMPROJ_L3PHIC21_nentries_0_V_din),
  .nent_we1(VMPROJ_L3PHIC21_nentries_1_V_we),
  .nent_i1(VMPROJ_L3PHIC21_nentries_1_V_din),
  .enb(VMPROJ_L3PHIC21_dataarray_data_V_enb),
  .addrb(VMPROJ_L3PHIC21_dataarray_data_V_readaddr),
  .doutb(VMPROJ_L3PHIC21_dataarray_data_V_dout),
  .nent_o0(VMPROJ_L3PHIC21_nentries_0_V_dout),
  .nent_o1(VMPROJ_L3PHIC21_nentries_1_V_dout),
  .regceb(1'b1)
);

wire ProjectionRouter_done;

SectorProcessor SectorProcessor_inst (
  .clk(clk),
  .reset(reset),
  .en_proc(en_proc),
  .bx_in_ProjectionRouter(bx_in_ProjectionRouter),
  .TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_enb(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_readaddr(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_dout(TPROJ_L1L2XXG_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L1L2XXG_L3PHIC_nentries_0_V_dout(TPROJ_L1L2XXG_L3PHIC_nentries_0_V_dout),
  .TPROJ_L1L2XXG_L3PHIC_nentries_1_V_dout(TPROJ_L1L2XXG_L3PHIC_nentries_1_V_dout),
  .TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_enb(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_readaddr(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_dout(TPROJ_L1L2XXH_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L1L2XXH_L3PHIC_nentries_0_V_dout(TPROJ_L1L2XXH_L3PHIC_nentries_0_V_dout),
  .TPROJ_L1L2XXH_L3PHIC_nentries_1_V_dout(TPROJ_L1L2XXH_L3PHIC_nentries_1_V_dout),
  .TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_enb(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_readaddr(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_dout(TPROJ_L5L6XXB_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L5L6XXB_L3PHIC_nentries_0_V_dout(TPROJ_L5L6XXB_L3PHIC_nentries_0_V_dout),
  .TPROJ_L5L6XXB_L3PHIC_nentries_1_V_dout(TPROJ_L5L6XXB_L3PHIC_nentries_1_V_dout),
  .TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_enb(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_readaddr(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_dout(TPROJ_L5L6XXC_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L5L6XXC_L3PHIC_nentries_0_V_dout(TPROJ_L5L6XXC_L3PHIC_nentries_0_V_dout),
  .TPROJ_L5L6XXC_L3PHIC_nentries_1_V_dout(TPROJ_L5L6XXC_L3PHIC_nentries_1_V_dout),
  .TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_enb(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_readaddr(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_dout(TPROJ_L5L6XXD_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L5L6XXD_L3PHIC_nentries_0_V_dout(TPROJ_L5L6XXD_L3PHIC_nentries_0_V_dout),
  .TPROJ_L5L6XXD_L3PHIC_nentries_1_V_dout(TPROJ_L5L6XXD_L3PHIC_nentries_1_V_dout),
  .TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_enb(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_readaddr(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_dout(TPROJ_L1L2XXF_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L1L2XXF_L3PHIC_nentries_0_V_dout(TPROJ_L1L2XXF_L3PHIC_nentries_0_V_dout),
  .TPROJ_L1L2XXF_L3PHIC_nentries_1_V_dout(TPROJ_L1L2XXF_L3PHIC_nentries_1_V_dout),
  .TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_enb(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_readaddr(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_dout(TPROJ_L1L2XXJ_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_dout(TPROJ_L1L2XXJ_L3PHIC_nentries_0_V_dout),
  .TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_dout(TPROJ_L1L2XXJ_L3PHIC_nentries_1_V_dout),
  .TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_enb(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_enb),
  .TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_readaddr(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_readaddr),
  .TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_dout(TPROJ_L1L2XXI_L3PHIC_dataarray_data_V_dout),
  .TPROJ_L1L2XXI_L3PHIC_nentries_0_V_dout(TPROJ_L1L2XXI_L3PHIC_nentries_0_V_dout),
  .TPROJ_L1L2XXI_L3PHIC_nentries_1_V_dout(TPROJ_L1L2XXI_L3PHIC_nentries_1_V_dout),
  .bx_out_ProjectionRouter(bx_out_ProjectionRouter),
  .VMPROJ_L3PHIC20_dataarray_data_V_ena(VMPROJ_L3PHIC20_dataarray_data_V_ena),
  .VMPROJ_L3PHIC20_dataarray_data_V_wea(VMPROJ_L3PHIC20_dataarray_data_V_wea),
  .VMPROJ_L3PHIC20_dataarray_data_V_writeaddr(VMPROJ_L3PHIC20_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC20_dataarray_data_V_din(VMPROJ_L3PHIC20_dataarray_data_V_din),
  .VMPROJ_L3PHIC20_nentries_0_V_we(VMPROJ_L3PHIC20_nentries_0_V_we),
  .VMPROJ_L3PHIC20_nentries_0_V_din(VMPROJ_L3PHIC20_nentries_0_V_din),
  .VMPROJ_L3PHIC20_nentries_1_V_we(VMPROJ_L3PHIC20_nentries_1_V_we),
  .VMPROJ_L3PHIC20_nentries_1_V_din(VMPROJ_L3PHIC20_nentries_1_V_din),
  .VMPROJ_L3PHIC17_dataarray_data_V_ena(VMPROJ_L3PHIC17_dataarray_data_V_ena),
  .VMPROJ_L3PHIC17_dataarray_data_V_wea(VMPROJ_L3PHIC17_dataarray_data_V_wea),
  .VMPROJ_L3PHIC17_dataarray_data_V_writeaddr(VMPROJ_L3PHIC17_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC17_dataarray_data_V_din(VMPROJ_L3PHIC17_dataarray_data_V_din),
  .VMPROJ_L3PHIC17_nentries_0_V_we(VMPROJ_L3PHIC17_nentries_0_V_we),
  .VMPROJ_L3PHIC17_nentries_0_V_din(VMPROJ_L3PHIC17_nentries_0_V_din),
  .VMPROJ_L3PHIC17_nentries_1_V_we(VMPROJ_L3PHIC17_nentries_1_V_we),
  .VMPROJ_L3PHIC17_nentries_1_V_din(VMPROJ_L3PHIC17_nentries_1_V_din),
  .VMPROJ_L3PHIC22_dataarray_data_V_ena(VMPROJ_L3PHIC22_dataarray_data_V_ena),
  .VMPROJ_L3PHIC22_dataarray_data_V_wea(VMPROJ_L3PHIC22_dataarray_data_V_wea),
  .VMPROJ_L3PHIC22_dataarray_data_V_writeaddr(VMPROJ_L3PHIC22_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC22_dataarray_data_V_din(VMPROJ_L3PHIC22_dataarray_data_V_din),
  .VMPROJ_L3PHIC22_nentries_0_V_we(VMPROJ_L3PHIC22_nentries_0_V_we),
  .VMPROJ_L3PHIC22_nentries_0_V_din(VMPROJ_L3PHIC22_nentries_0_V_din),
  .VMPROJ_L3PHIC22_nentries_1_V_we(VMPROJ_L3PHIC22_nentries_1_V_we),
  .VMPROJ_L3PHIC22_nentries_1_V_din(VMPROJ_L3PHIC22_nentries_1_V_din),
  .VMPROJ_L3PHIC19_dataarray_data_V_ena(VMPROJ_L3PHIC19_dataarray_data_V_ena),
  .VMPROJ_L3PHIC19_dataarray_data_V_wea(VMPROJ_L3PHIC19_dataarray_data_V_wea),
  .VMPROJ_L3PHIC19_dataarray_data_V_writeaddr(VMPROJ_L3PHIC19_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC19_dataarray_data_V_din(VMPROJ_L3PHIC19_dataarray_data_V_din),
  .VMPROJ_L3PHIC19_nentries_0_V_we(VMPROJ_L3PHIC19_nentries_0_V_we),
  .VMPROJ_L3PHIC19_nentries_0_V_din(VMPROJ_L3PHIC19_nentries_0_V_din),
  .VMPROJ_L3PHIC19_nentries_1_V_we(VMPROJ_L3PHIC19_nentries_1_V_we),
  .VMPROJ_L3PHIC19_nentries_1_V_din(VMPROJ_L3PHIC19_nentries_1_V_din),
  .AP_L3PHIC_dataarray_data_V_ena(AP_L3PHIC_dataarray_data_V_ena),
  .AP_L3PHIC_dataarray_data_V_wea(AP_L3PHIC_dataarray_data_V_wea),
  .AP_L3PHIC_dataarray_data_V_writeaddr(AP_L3PHIC_dataarray_data_V_writeaddr),
  .AP_L3PHIC_dataarray_data_V_din(AP_L3PHIC_dataarray_data_V_din),
  .AP_L3PHIC_nentries_0_V_we(AP_L3PHIC_nentries_0_V_we),
  .AP_L3PHIC_nentries_0_V_din(AP_L3PHIC_nentries_0_V_din),
  .AP_L3PHIC_nentries_1_V_we(AP_L3PHIC_nentries_1_V_we),
  .AP_L3PHIC_nentries_1_V_din(AP_L3PHIC_nentries_1_V_din),
  .AP_L3PHIC_nentries_2_V_we(AP_L3PHIC_nentries_2_V_we),
  .AP_L3PHIC_nentries_2_V_din(AP_L3PHIC_nentries_2_V_din),
  .AP_L3PHIC_nentries_3_V_we(AP_L3PHIC_nentries_3_V_we),
  .AP_L3PHIC_nentries_3_V_din(AP_L3PHIC_nentries_3_V_din),
  .AP_L3PHIC_nentries_4_V_we(AP_L3PHIC_nentries_4_V_we),
  .AP_L3PHIC_nentries_4_V_din(AP_L3PHIC_nentries_4_V_din),
  .AP_L3PHIC_nentries_5_V_we(AP_L3PHIC_nentries_5_V_we),
  .AP_L3PHIC_nentries_5_V_din(AP_L3PHIC_nentries_5_V_din),
  .AP_L3PHIC_nentries_6_V_we(AP_L3PHIC_nentries_6_V_we),
  .AP_L3PHIC_nentries_6_V_din(AP_L3PHIC_nentries_6_V_din),
  .AP_L3PHIC_nentries_7_V_we(AP_L3PHIC_nentries_7_V_we),
  .AP_L3PHIC_nentries_7_V_din(AP_L3PHIC_nentries_7_V_din),
  .VMPROJ_L3PHIC24_dataarray_data_V_ena(VMPROJ_L3PHIC24_dataarray_data_V_ena),
  .VMPROJ_L3PHIC24_dataarray_data_V_wea(VMPROJ_L3PHIC24_dataarray_data_V_wea),
  .VMPROJ_L3PHIC24_dataarray_data_V_writeaddr(VMPROJ_L3PHIC24_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC24_dataarray_data_V_din(VMPROJ_L3PHIC24_dataarray_data_V_din),
  .VMPROJ_L3PHIC24_nentries_0_V_we(VMPROJ_L3PHIC24_nentries_0_V_we),
  .VMPROJ_L3PHIC24_nentries_0_V_din(VMPROJ_L3PHIC24_nentries_0_V_din),
  .VMPROJ_L3PHIC24_nentries_1_V_we(VMPROJ_L3PHIC24_nentries_1_V_we),
  .VMPROJ_L3PHIC24_nentries_1_V_din(VMPROJ_L3PHIC24_nentries_1_V_din),
  .VMPROJ_L3PHIC23_dataarray_data_V_ena(VMPROJ_L3PHIC23_dataarray_data_V_ena),
  .VMPROJ_L3PHIC23_dataarray_data_V_wea(VMPROJ_L3PHIC23_dataarray_data_V_wea),
  .VMPROJ_L3PHIC23_dataarray_data_V_writeaddr(VMPROJ_L3PHIC23_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC23_dataarray_data_V_din(VMPROJ_L3PHIC23_dataarray_data_V_din),
  .VMPROJ_L3PHIC23_nentries_0_V_we(VMPROJ_L3PHIC23_nentries_0_V_we),
  .VMPROJ_L3PHIC23_nentries_0_V_din(VMPROJ_L3PHIC23_nentries_0_V_din),
  .VMPROJ_L3PHIC23_nentries_1_V_we(VMPROJ_L3PHIC23_nentries_1_V_we),
  .VMPROJ_L3PHIC23_nentries_1_V_din(VMPROJ_L3PHIC23_nentries_1_V_din),
  .VMPROJ_L3PHIC18_dataarray_data_V_ena(VMPROJ_L3PHIC18_dataarray_data_V_ena),
  .VMPROJ_L3PHIC18_dataarray_data_V_wea(VMPROJ_L3PHIC18_dataarray_data_V_wea),
  .VMPROJ_L3PHIC18_dataarray_data_V_writeaddr(VMPROJ_L3PHIC18_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC18_dataarray_data_V_din(VMPROJ_L3PHIC18_dataarray_data_V_din),
  .VMPROJ_L3PHIC18_nentries_0_V_we(VMPROJ_L3PHIC18_nentries_0_V_we),
  .VMPROJ_L3PHIC18_nentries_0_V_din(VMPROJ_L3PHIC18_nentries_0_V_din),
  .VMPROJ_L3PHIC18_nentries_1_V_we(VMPROJ_L3PHIC18_nentries_1_V_we),
  .VMPROJ_L3PHIC18_nentries_1_V_din(VMPROJ_L3PHIC18_nentries_1_V_din),
  .VMPROJ_L3PHIC21_dataarray_data_V_ena(VMPROJ_L3PHIC21_dataarray_data_V_ena),
  .VMPROJ_L3PHIC21_dataarray_data_V_wea(VMPROJ_L3PHIC21_dataarray_data_V_wea),
  .VMPROJ_L3PHIC21_dataarray_data_V_writeaddr(VMPROJ_L3PHIC21_dataarray_data_V_writeaddr),
  .VMPROJ_L3PHIC21_dataarray_data_V_din(VMPROJ_L3PHIC21_dataarray_data_V_din),
  .VMPROJ_L3PHIC21_nentries_0_V_we(VMPROJ_L3PHIC21_nentries_0_V_we),
  .VMPROJ_L3PHIC21_nentries_0_V_din(VMPROJ_L3PHIC21_nentries_0_V_din),
  .VMPROJ_L3PHIC21_nentries_1_V_we(VMPROJ_L3PHIC21_nentries_1_V_we),
  .VMPROJ_L3PHIC21_nentries_1_V_din(VMPROJ_L3PHIC21_nentries_1_V_din),
  .ProjectionRouter_done(ProjectionRouter_done)
);

endmodule
