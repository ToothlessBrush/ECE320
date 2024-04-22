// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr 21 03:13:09 2024
// Host        : DESKTOP-462IOAI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Vivado
//               labs/HW9/HW9.sim/sim_1/synth/func/xsim/swapTB_func_synth.v}
// Design      : swap
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* S0 = "2'b00" *) (* S1 = "2'b01" *) (* S2 = "2'b10" *) 
(* S3 = "2'b11" *) 
(* NotValidForBitStream *)
module swap
   (clk100MHz,
    reset,
    w,
    data,
    R1,
    R2,
    state);
  input clk100MHz;
  input reset;
  input w;
  input [7:0]data;
  output [7:0]R1;
  output [7:0]R2;
  output [1:0]state;

  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [7:0]R1;
  wire [7:0]R1_OBUF;
  wire \R1_reg[0]_i_1_n_0 ;
  wire \R1_reg[1]_i_1_n_0 ;
  wire \R1_reg[2]_i_1_n_0 ;
  wire \R1_reg[3]_i_1_n_0 ;
  wire \R1_reg[4]_i_1_n_0 ;
  wire \R1_reg[5]_i_1_n_0 ;
  wire \R1_reg[6]_i_1_n_0 ;
  wire \R1_reg[7]_i_1_n_0 ;
  wire \R1_reg[7]_i_2_n_0 ;
  wire [7:0]R2;
  wire [7:0]R2_OBUF;
  wire \R2_reg[0]_i_1_n_0 ;
  wire \R2_reg[1]_i_1_n_0 ;
  wire \R2_reg[2]_i_1_n_0 ;
  wire \R2_reg[3]_i_1_n_0 ;
  wire \R2_reg[4]_i_1_n_0 ;
  wire \R2_reg[5]_i_1_n_0 ;
  wire \R2_reg[6]_i_1_n_0 ;
  wire \R2_reg[7]_i_1_n_0 ;
  wire \R2_reg[7]_i_2_n_0 ;
  wire clk100MHz;
  wire clk100MHz_IBUF;
  wire clk100MHz_IBUF_BUFG;
  wire [7:0]data;
  wire [7:0]data_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]state;
  wire [1:0]state_OBUF;
  wire w;
  wire w_IBUF;
  wire w_prev;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFEAEE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(w_prev),
        .I3(w_IBUF),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(w_prev),
        .I2(w_IBUF),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S0:0001,S1:0010,S2:0100,S3:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk100MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_IBUF),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S0:0001,S1:0010,S2:0100,S3:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk100MHz_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S0:0001,S1:0010,S2:0100,S3:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk100MHz_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S0:0001,S1:0010,S2:0100,S3:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk100MHz_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  OBUF \R1_OBUF[0]_inst 
       (.I(R1_OBUF[0]),
        .O(R1[0]));
  OBUF \R1_OBUF[1]_inst 
       (.I(R1_OBUF[1]),
        .O(R1[1]));
  OBUF \R1_OBUF[2]_inst 
       (.I(R1_OBUF[2]),
        .O(R1[2]));
  OBUF \R1_OBUF[3]_inst 
       (.I(R1_OBUF[3]),
        .O(R1[3]));
  OBUF \R1_OBUF[4]_inst 
       (.I(R1_OBUF[4]),
        .O(R1[4]));
  OBUF \R1_OBUF[5]_inst 
       (.I(R1_OBUF[5]),
        .O(R1[5]));
  OBUF \R1_OBUF[6]_inst 
       (.I(R1_OBUF[6]),
        .O(R1[6]));
  OBUF \R1_OBUF[7]_inst 
       (.I(R1_OBUF[7]),
        .O(R1[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[0] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[0]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[0]));
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[0]_i_1 
       (.I0(data_IBUF[0]),
        .I1(R2_OBUF[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[1] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[1]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[1]));
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[1]_i_1 
       (.I0(data_IBUF[1]),
        .I1(R2_OBUF[1]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[2] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[2]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[2]));
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[2]_i_1 
       (.I0(data_IBUF[2]),
        .I1(R2_OBUF[2]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[3] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[3]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[3]));
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[3]_i_1 
       (.I0(data_IBUF[3]),
        .I1(R2_OBUF[3]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[4] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[4]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[4]));
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[4]_i_1 
       (.I0(data_IBUF[4]),
        .I1(R2_OBUF[4]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[5] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[5]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[5]));
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[5]_i_1 
       (.I0(data_IBUF[5]),
        .I1(R2_OBUF[5]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[6] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[6]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[6]));
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[6]_i_1 
       (.I0(data_IBUF[6]),
        .I1(R2_OBUF[6]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R1_reg[7] 
       (.CLR(reset_IBUF),
        .D(\R1_reg[7]_i_1_n_0 ),
        .G(\R1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R1_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEEACCCC)) 
    \R1_reg[7]_i_1 
       (.I0(data_IBUF[7]),
        .I1(R2_OBUF[7]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R1_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \R1_reg[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(reset_IBUF),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\R1_reg[7]_i_2_n_0 ));
  OBUF \R2_OBUF[0]_inst 
       (.I(R2_OBUF[0]),
        .O(R2[0]));
  OBUF \R2_OBUF[1]_inst 
       (.I(R2_OBUF[1]),
        .O(R2[1]));
  OBUF \R2_OBUF[2]_inst 
       (.I(R2_OBUF[2]),
        .O(R2[2]));
  OBUF \R2_OBUF[3]_inst 
       (.I(R2_OBUF[3]),
        .O(R2[3]));
  OBUF \R2_OBUF[4]_inst 
       (.I(R2_OBUF[4]),
        .O(R2[4]));
  OBUF \R2_OBUF[5]_inst 
       (.I(R2_OBUF[5]),
        .O(R2[5]));
  OBUF \R2_OBUF[6]_inst 
       (.I(R2_OBUF[6]),
        .O(R2[6]));
  OBUF \R2_OBUF[7]_inst 
       (.I(R2_OBUF[7]),
        .O(R2[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[0] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[0]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[0]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[0]_i_1 
       (.I0(data_IBUF[0]),
        .I1(R1_OBUF[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[1] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[1]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[1]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[1]_i_1 
       (.I0(data_IBUF[1]),
        .I1(R1_OBUF[1]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[2] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[2]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[2]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[2]_i_1 
       (.I0(data_IBUF[2]),
        .I1(R1_OBUF[2]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[3] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[3]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[3]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[3]_i_1 
       (.I0(data_IBUF[3]),
        .I1(R1_OBUF[3]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[4] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[4]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[4]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[4]_i_1 
       (.I0(data_IBUF[4]),
        .I1(R1_OBUF[4]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[5] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[5]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[5]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[5]_i_1 
       (.I0(data_IBUF[5]),
        .I1(R1_OBUF[5]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[6] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[6]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[6]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[6]_i_1 
       (.I0(data_IBUF[6]),
        .I1(R1_OBUF[6]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \R2_reg[7] 
       (.CLR(reset_IBUF),
        .D(\R2_reg[7]_i_1_n_0 ),
        .G(\R2_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(R2_OBUF[7]));
  LUT5 #(
    .INIT(32'hECECECAC)) 
    \R2_reg[7]_i_1 
       (.I0(data_IBUF[7]),
        .I1(R1_OBUF[7]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\R2_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \R2_reg[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(reset_IBUF),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\R2_reg[7]_i_2_n_0 ));
  BUFG clk100MHz_IBUF_BUFG_inst
       (.I(clk100MHz_IBUF),
        .O(clk100MHz_IBUF_BUFG));
  IBUF clk100MHz_IBUF_inst
       (.I(clk100MHz),
        .O(clk100MHz_IBUF));
  IBUF \data_IBUF[0]_inst 
       (.I(data[0]),
        .O(data_IBUF[0]));
  IBUF \data_IBUF[1]_inst 
       (.I(data[1]),
        .O(data_IBUF[1]));
  IBUF \data_IBUF[2]_inst 
       (.I(data[2]),
        .O(data_IBUF[2]));
  IBUF \data_IBUF[3]_inst 
       (.I(data[3]),
        .O(data_IBUF[3]));
  IBUF \data_IBUF[4]_inst 
       (.I(data[4]),
        .O(data_IBUF[4]));
  IBUF \data_IBUF[5]_inst 
       (.I(data[5]),
        .O(data_IBUF[5]));
  IBUF \data_IBUF[6]_inst 
       (.I(data[6]),
        .O(data_IBUF[6]));
  IBUF \data_IBUF[7]_inst 
       (.I(data[7]),
        .O(data_IBUF[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \state_OBUF[0]_inst 
       (.I(state_OBUF[0]),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_OBUF[0]_inst_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(state_OBUF[0]));
  OBUF \state_OBUF[1]_inst 
       (.I(state_OBUF[1]),
        .O(state[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \state_OBUF[1]_inst_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(state_OBUF[1]));
  IBUF w_IBUF_inst
       (.I(w),
        .O(w_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    w_prev_reg
       (.C(clk100MHz_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(w_IBUF),
        .Q(w_prev));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
