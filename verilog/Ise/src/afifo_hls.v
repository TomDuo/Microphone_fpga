// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="afifo_hls,hls_ip_2015_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc6slx9tqg144-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.098000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=29,HLS_SYN_LUT=15}" *)

module afifo_hls (
        ap_clk,
        ap_rst,
        rd_n_V,
        wr_n_V,
        rxf_n_V,
        txe_n_V,
        oe_V,
        data_V_i,
        data_V_o,
        inData_V_data_V_din,
        inData_V_data_V_full_n,
        inData_V_data_V_write,
        outData_V_data_V_dout,
        outData_V_data_V_empty_n,
        outData_V_data_V_read
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_st2_fsm_1 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv4_5 = 4'b101;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv4_2 = 4'b10;
parameter    ap_const_lv4_9 = 4'b1001;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_7 = 4'b111;
parameter    ap_const_lv4_6 = 4'b110;
parameter    ap_const_lv4_4 = 4'b100;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
output  [0:0] rd_n_V;
output  [0:0] wr_n_V;
input  [0:0] rxf_n_V;
input  [0:0] txe_n_V;
output  [0:0] oe_V;
input  [7:0] data_V_i;
output  [7:0] data_V_o;
output  [7:0] inData_V_data_V_din;
input   inData_V_data_V_full_n;
output   inData_V_data_V_write;
input  [7:0] outData_V_data_V_dout;
input   outData_V_data_V_empty_n;
output   outData_V_data_V_read;

reg inData_V_data_V_write;
reg outData_V_data_V_read;
reg   [0:0] rd_n_V_1_data_reg = 1'b0;
reg   [0:0] rd_n_V_1_data_in;
reg    rd_n_V_1_vld_reg = 1'b0;
reg    rd_n_V_1_vld_in;
reg    rd_n_V_1_ack_in;
reg   [0:0] wr_n_V_1_data_reg = 1'b0;
reg   [0:0] wr_n_V_1_data_in;
reg    wr_n_V_1_vld_reg = 1'b0;
reg    wr_n_V_1_vld_in;
reg    wr_n_V_1_ack_in;
reg   [0:0] oe_V_1_data_reg = 1'b0;
reg   [0:0] oe_V_1_data_in;
reg    oe_V_1_vld_reg = 1'b0;
reg    oe_V_1_vld_in;
reg    oe_V_1_ack_in;
reg   [7:0] data_V_0_data_reg = 8'b00000000;
reg    data_V_0_vld_reg = 1'b0;
reg    data_V_0_ack_out;
reg   [7:0] data_V_1_data_reg = 8'b00000000;
reg    data_V_1_vld_reg = 1'b0;
reg    data_V_1_vld_in;
reg    data_V_1_ack_in;
reg   [3:0] State = 4'b0000;
wire   [0:0] txe_n_V_read_read_fu_78_p2;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm = 2'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_150;
wire   [3:0] State_load_load_fu_167_p1;
reg    ap_sig_bdd_157;
wire   [0:0] rxf_n_V_read_read_fu_84_p2;
reg   [3:0] State_load_reg_233;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_173;
reg    ap_sig_bdd_187;
wire   [0:0] tmp_nbreadreq_fu_145_p3;
wire   [0:0] tmp_1_nbwritereq_fu_153_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_sig_bdd_160;




/// State assign process. ///
always @ (posedge ap_clk) begin : ap_ret_State
    if (ap_rst == 1'b1) begin
        State <= ap_const_lv4_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_bdd_187 & (((ap_const_lv4_0 == State_load_reg_233) & ~(ap_const_lv1_0 == txe_n_V_read_read_fu_78_p2) & (ap_const_lv1_0 == rxf_n_V_read_read_fu_84_p2) & ~(ap_const_lv1_0 == tmp_1_nbwritereq_fu_153_p3)) | ((ap_const_lv4_0 == State_load_reg_233) & (ap_const_lv1_0 == tmp_nbreadreq_fu_145_p3) & (ap_const_lv1_0 == rxf_n_V_read_read_fu_84_p2) & ~(ap_const_lv1_0 == tmp_1_nbwritereq_fu_153_p3))))) begin
            State <= ap_const_lv4_1;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_bdd_187 & (ap_const_lv4_0 == State_load_reg_233) & (ap_const_lv1_0 == txe_n_V_read_read_fu_78_p2) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_145_p3))) begin
            State <= ap_const_lv4_5;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_1))) begin
            State <= ap_const_lv4_2;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_2))) begin
            State <= ap_const_lv4_3;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_3))) begin
            State <= ap_const_lv4_4;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (State == ap_const_lv4_5) & ~ap_sig_bdd_157)) begin
            State <= ap_const_lv4_6;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_6))) begin
            State <= ap_const_lv4_7;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_7))) begin
            State <= ap_const_lv4_8;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_8))) begin
            State <= ap_const_lv4_9;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_9)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_4)))) begin
            State <= ap_const_lv4_0;
        end
    end
end

/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157)) begin
        State_load_reg_233 <= State;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == ap_const_logic_1) & (ap_const_logic_0 == data_V_0_vld_reg)) | ((ap_const_logic_1 == ap_const_logic_1) & (ap_const_logic_1 == data_V_0_vld_reg) & (ap_const_logic_1 == data_V_0_ack_out)))) begin
        data_V_0_data_reg <= data_V_i;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == data_V_1_vld_in) & (ap_const_logic_0 == data_V_1_vld_reg)) | ((ap_const_logic_1 == data_V_1_vld_in) & (ap_const_logic_1 == data_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        data_V_1_data_reg <= outData_V_data_V_dout;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == oe_V_1_vld_in) & (ap_const_logic_0 == oe_V_1_vld_reg)) | ((ap_const_logic_1 == oe_V_1_vld_in) & (ap_const_logic_1 == oe_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        oe_V_1_data_reg <= oe_V_1_data_in;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == rd_n_V_1_vld_in) & (ap_const_logic_0 == rd_n_V_1_vld_reg)) | ((ap_const_logic_1 == rd_n_V_1_vld_in) & (ap_const_logic_1 == rd_n_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        rd_n_V_1_data_reg <= rd_n_V_1_data_in;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == wr_n_V_1_vld_in) & (ap_const_logic_0 == wr_n_V_1_vld_reg)) | ((ap_const_logic_1 == wr_n_V_1_vld_in) & (ap_const_logic_1 == wr_n_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        wr_n_V_1_data_reg <= wr_n_V_1_data_in;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_150) begin
    if (ap_sig_bdd_150) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_173) begin
    if (ap_sig_bdd_173) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// data_V_0_ack_out assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or ap_sig_bdd_187) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_bdd_187)) begin
        data_V_0_ack_out = ap_const_logic_1;
    end else begin
        data_V_0_ack_out = ap_const_logic_0;
    end
end

/// data_V_1_ack_in assign process. ///
always @ (data_V_1_vld_reg) begin
    if (((ap_const_logic_0 == data_V_1_vld_reg) | ((ap_const_logic_1 == data_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        data_V_1_ack_in = ap_const_logic_1;
    end else begin
        data_V_1_ack_in = ap_const_logic_0;
    end
end

/// data_V_1_vld_in assign process. ///
always @ (State or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_157) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (State == ap_const_lv4_5) & ~ap_sig_bdd_157)) begin
        data_V_1_vld_in = ap_const_logic_1;
    end else begin
        data_V_1_vld_in = ap_const_logic_0;
    end
end

/// inData_V_data_V_write assign process. ///
always @ (State_load_reg_233 or ap_sig_cseq_ST_st2_fsm_1 or ap_sig_bdd_187) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (State_load_reg_233 == ap_const_lv4_2) & ~ap_sig_bdd_187)) begin
        inData_V_data_V_write = ap_const_logic_1;
    end else begin
        inData_V_data_V_write = ap_const_logic_0;
    end
end

/// oe_V_1_ack_in assign process. ///
always @ (oe_V_1_vld_reg) begin
    if (((ap_const_logic_0 == oe_V_1_vld_reg) | ((ap_const_logic_1 == oe_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        oe_V_1_ack_in = ap_const_logic_1;
    end else begin
        oe_V_1_ack_in = ap_const_logic_0;
    end
end

/// oe_V_1_data_in assign process. ///
always @ (State or State_load_load_fu_167_p1 or ap_sig_bdd_160) begin
    if (ap_sig_bdd_160) begin
        if ((ap_const_lv4_0 == State_load_load_fu_167_p1)) begin
            oe_V_1_data_in = ap_const_lv1_0;
        end else if ((State == ap_const_lv4_5)) begin
            oe_V_1_data_in = ap_const_lv1_1;
        end else begin
            oe_V_1_data_in = 'bx;
        end
    end else begin
        oe_V_1_data_in = 'bx;
    end
end

/// oe_V_1_vld_in assign process. ///
always @ (State or ap_sig_cseq_ST_st1_fsm_0 or State_load_load_fu_167_p1 or ap_sig_bdd_157) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (State == ap_const_lv4_5) & ~ap_sig_bdd_157) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (ap_const_lv4_0 == State_load_load_fu_167_p1)))) begin
        oe_V_1_vld_in = ap_const_logic_1;
    end else begin
        oe_V_1_vld_in = ap_const_logic_0;
    end
end

/// outData_V_data_V_read assign process. ///
always @ (State or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_157) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & (State == ap_const_lv4_5) & ~ap_sig_bdd_157)) begin
        outData_V_data_V_read = ap_const_logic_1;
    end else begin
        outData_V_data_V_read = ap_const_logic_0;
    end
end

/// rd_n_V_1_ack_in assign process. ///
always @ (rd_n_V_1_vld_reg) begin
    if (((ap_const_logic_0 == rd_n_V_1_vld_reg) | ((ap_const_logic_1 == rd_n_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        rd_n_V_1_ack_in = ap_const_logic_1;
    end else begin
        rd_n_V_1_ack_in = ap_const_logic_0;
    end
end

/// rd_n_V_1_data_in assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or State_load_load_fu_167_p1 or ap_sig_bdd_157) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_1))) begin
        rd_n_V_1_data_in = ap_const_lv1_0;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (ap_const_lv4_0 == State_load_load_fu_167_p1)))) begin
        rd_n_V_1_data_in = ap_const_lv1_1;
    end else begin
        rd_n_V_1_data_in = 'bx;
    end
end

/// rd_n_V_1_vld_in assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or State_load_load_fu_167_p1 or ap_sig_bdd_157) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_1)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (ap_const_lv4_0 == State_load_load_fu_167_p1)))) begin
        rd_n_V_1_vld_in = ap_const_logic_1;
    end else begin
        rd_n_V_1_vld_in = ap_const_logic_0;
    end
end

/// wr_n_V_1_ack_in assign process. ///
always @ (wr_n_V_1_vld_reg) begin
    if (((ap_const_logic_0 == wr_n_V_1_vld_reg) | ((ap_const_logic_1 == wr_n_V_1_vld_reg) & (ap_const_logic_1 == ap_const_logic_1)))) begin
        wr_n_V_1_ack_in = ap_const_logic_1;
    end else begin
        wr_n_V_1_ack_in = ap_const_logic_0;
    end
end

/// wr_n_V_1_data_in assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or State_load_load_fu_167_p1 or ap_sig_bdd_157) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_6))) begin
        wr_n_V_1_data_in = ap_const_lv1_0;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_7)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (ap_const_lv4_0 == State_load_load_fu_167_p1)))) begin
        wr_n_V_1_data_in = ap_const_lv1_1;
    end else begin
        wr_n_V_1_data_in = 'bx;
    end
end

/// wr_n_V_1_vld_in assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or State_load_load_fu_167_p1 or ap_sig_bdd_157) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_7)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (State_load_load_fu_167_p1 == ap_const_lv4_6)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157 & (ap_const_lv4_0 == State_load_load_fu_167_p1)))) begin
        wr_n_V_1_vld_in = ap_const_logic_1;
    end else begin
        wr_n_V_1_vld_in = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_157 or ap_sig_bdd_187) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_157) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~ap_sig_bdd_187) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign State_load_load_fu_167_p1 = State;

/// ap_sig_bdd_150 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_150 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_157 assign process. ///
always @ (outData_V_data_V_empty_n or State) begin
    ap_sig_bdd_157 = ((outData_V_data_V_empty_n == ap_const_logic_0) & (State == ap_const_lv4_5));
end

/// ap_sig_bdd_160 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_157) begin
    ap_sig_bdd_160 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_157);
end

/// ap_sig_bdd_173 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_173 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_187 assign process. ///
always @ (rd_n_V_1_ack_in or wr_n_V_1_ack_in or oe_V_1_ack_in or data_V_1_ack_in or inData_V_data_V_full_n or State_load_reg_233) begin
    ap_sig_bdd_187 = (((inData_V_data_V_full_n == ap_const_logic_0) & (State_load_reg_233 == ap_const_lv4_2)) | (rd_n_V_1_ack_in == ap_const_logic_0) | (wr_n_V_1_ack_in == ap_const_logic_0) | (oe_V_1_ack_in == ap_const_logic_0) | (data_V_1_ack_in == ap_const_logic_0));
end
assign data_V_o = data_V_1_data_reg;
assign inData_V_data_V_din = data_V_0_data_reg;
assign oe_V = oe_V_1_data_reg;
assign rd_n_V = rd_n_V_1_data_reg;
assign rxf_n_V_read_read_fu_84_p2 = rxf_n_V;
assign tmp_1_nbwritereq_fu_153_p3 = inData_V_data_V_full_n;
assign tmp_nbreadreq_fu_145_p3 = outData_V_data_V_empty_n;
assign txe_n_V_read_read_fu_78_p2 = txe_n_V;
assign wr_n_V = wr_n_V_1_data_reg;


endmodule //afifo_hls
