//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
//Date        : Mon Mar  8 15:30:37 2021
//Host        : elliott-linux running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (gpio_i,
    gpio_o,
    gpio_rx1_enable_in,
    gpio_rx2_enable_in,
    gpio_t,
    gpio_tx1_enable_in,
    gpio_tx2_enable_in,
    mssi_sync,
    rx1_dclk_in_n,
    rx1_dclk_in_p,
    rx1_enable,
    rx1_idata_in_n,
    rx1_idata_in_p,
    rx1_qdata_in_n,
    rx1_qdata_in_p,
    rx1_strobe_in_n,
    rx1_strobe_in_p,
    rx2_dclk_in_n,
    rx2_dclk_in_p,
    rx2_enable,
    rx2_idata_in_n,
    rx2_idata_in_p,
    rx2_qdata_in_n,
    rx2_qdata_in_p,
    rx2_strobe_in_n,
    rx2_strobe_in_p,
    spi0_csn,
    spi0_miso,
    spi0_mosi,
    spi0_sclk,
    spi1_csn,
    spi1_miso,
    spi1_mosi,
    spi1_sclk,
    tdd_sync,
    tdd_sync_cntr,
    tx1_dclk_in_n,
    tx1_dclk_in_p,
    tx1_dclk_out_n,
    tx1_dclk_out_p,
    tx1_enable,
    tx1_idata_out_n,
    tx1_idata_out_p,
    tx1_qdata_out_n,
    tx1_qdata_out_p,
    tx1_strobe_out_n,
    tx1_strobe_out_p,
    tx2_dclk_in_n,
    tx2_dclk_in_p,
    tx2_dclk_out_n,
    tx2_dclk_out_p,
    tx2_enable,
    tx2_idata_out_n,
    tx2_idata_out_p,
    tx2_qdata_out_n,
    tx2_qdata_out_p,
    tx2_strobe_out_n,
    tx2_strobe_out_p,
    tx_output_enable);
  input [94:0]gpio_i;
  output [94:0]gpio_o;
  input gpio_rx1_enable_in;
  input gpio_rx2_enable_in;
  output [94:0]gpio_t;
  input gpio_tx1_enable_in;
  input gpio_tx2_enable_in;
  input mssi_sync;
  input rx1_dclk_in_n;
  input rx1_dclk_in_p;
  output rx1_enable;
  input rx1_idata_in_n;
  input rx1_idata_in_p;
  input rx1_qdata_in_n;
  input rx1_qdata_in_p;
  input rx1_strobe_in_n;
  input rx1_strobe_in_p;
  input rx2_dclk_in_n;
  input rx2_dclk_in_p;
  output rx2_enable;
  input rx2_idata_in_n;
  input rx2_idata_in_p;
  input rx2_qdata_in_n;
  input rx2_qdata_in_p;
  input rx2_strobe_in_n;
  input rx2_strobe_in_p;
  output [2:0]spi0_csn;
  input spi0_miso;
  output spi0_mosi;
  output spi0_sclk;
  output [2:0]spi1_csn;
  input spi1_miso;
  output spi1_mosi;
  output spi1_sclk;
  input tdd_sync;
  output tdd_sync_cntr;
  input tx1_dclk_in_n;
  input tx1_dclk_in_p;
  output tx1_dclk_out_n;
  output tx1_dclk_out_p;
  output tx1_enable;
  output tx1_idata_out_n;
  output tx1_idata_out_p;
  output tx1_qdata_out_n;
  output tx1_qdata_out_p;
  output tx1_strobe_out_n;
  output tx1_strobe_out_p;
  input tx2_dclk_in_n;
  input tx2_dclk_in_p;
  output tx2_dclk_out_n;
  output tx2_dclk_out_p;
  output tx2_enable;
  output tx2_idata_out_n;
  output tx2_idata_out_p;
  output tx2_qdata_out_n;
  output tx2_qdata_out_p;
  output tx2_strobe_out_n;
  output tx2_strobe_out_p;
  input tx_output_enable;

  wire [94:0]gpio_i;
  wire [94:0]gpio_o;
  wire gpio_rx1_enable_in;
  wire gpio_rx2_enable_in;
  wire [94:0]gpio_t;
  wire gpio_tx1_enable_in;
  wire gpio_tx2_enable_in;
  wire mssi_sync;
  wire ref_clk;
  wire rx1_dclk_in_n;
  wire rx1_dclk_in_p;
  wire rx1_enable;
  wire rx1_idata_in_n;
  wire rx1_idata_in_p;
  wire rx1_qdata_in_n;
  wire rx1_qdata_in_p;
  wire rx1_strobe_in_n;
  wire rx1_strobe_in_p;
  wire rx2_dclk_in_n;
  wire rx2_dclk_in_p;
  wire rx2_enable;
  wire rx2_idata_in_n;
  wire rx2_idata_in_p;
  wire rx2_qdata_in_n;
  wire rx2_qdata_in_p;
  wire rx2_strobe_in_n;
  wire rx2_strobe_in_p;
  wire [2:0]spi0_csn;
  wire spi0_miso;
  wire spi0_mosi;
  wire spi0_sclk;
  wire [2:0]spi1_csn;
  wire spi1_miso;
  wire spi1_mosi;
  wire spi1_sclk;
  wire tdd_sync;
  wire tdd_sync_cntr;
  wire tx1_dclk_in_n;
  wire tx1_dclk_in_p;
  wire tx1_dclk_out_n;
  wire tx1_dclk_out_p;
  wire tx1_enable;
  wire tx1_idata_out_n;
  wire tx1_idata_out_p;
  wire tx1_qdata_out_n;
  wire tx1_qdata_out_p;
  wire tx1_strobe_out_n;
  wire tx1_strobe_out_p;
  wire tx2_dclk_in_n;
  wire tx2_dclk_in_p;
  wire tx2_dclk_out_n;
  wire tx2_dclk_out_p;
  wire tx2_enable;
  wire tx2_idata_out_n;
  wire tx2_idata_out_p;
  wire tx2_qdata_out_n;
  wire tx2_qdata_out_p;
  wire tx2_strobe_out_n;
  wire tx2_strobe_out_p;
  wire tx_output_enable;

  system system_i
       (.gpio_i(gpio_i),
        .gpio_o(gpio_o),
        .gpio_rx1_enable_in(gpio_rx1_enable_in),
        .gpio_rx2_enable_in(gpio_rx2_enable_in),
        .gpio_t(gpio_t),
        .gpio_tx1_enable_in(gpio_tx1_enable_in),
        .gpio_tx2_enable_in(gpio_tx2_enable_in),
        .mssi_sync(mssi_sync),
        .rx1_dclk_in_n(rx1_dclk_in_n),
        .rx1_dclk_in_p(rx1_dclk_in_p),
        .rx1_enable(rx1_enable),
        .rx1_idata_in_n(rx1_idata_in_n),
        .rx1_idata_in_p(rx1_idata_in_p),
        .rx1_qdata_in_n(rx1_qdata_in_n),
        .rx1_qdata_in_p(rx1_qdata_in_p),
        .rx1_strobe_in_n(rx1_strobe_in_n),
        .rx1_strobe_in_p(rx1_strobe_in_p),
        .rx2_dclk_in_n(rx2_dclk_in_n),
        .rx2_dclk_in_p(rx2_dclk_in_p),
        .rx2_enable(rx2_enable),
        .rx2_idata_in_n(rx2_idata_in_n),
        .rx2_idata_in_p(rx2_idata_in_p),
        .rx2_qdata_in_n(rx2_qdata_in_n),
        .rx2_qdata_in_p(rx2_qdata_in_p),
        .rx2_strobe_in_n(rx2_strobe_in_n),
        .rx2_strobe_in_p(rx2_strobe_in_p),
        .spi0_csn(spi0_csn),
        .spi0_miso(spi0_miso),
        .spi0_mosi(spi0_mosi),
        .spi0_sclk(spi0_sclk),
        .spi1_csn(spi1_csn),
        .spi1_miso(spi1_miso),
        .spi1_mosi(spi1_mosi),
        .spi1_sclk(spi1_sclk),
        .tdd_sync(tdd_sync),
        .tdd_sync_cntr(tdd_sync_cntr),
        .tx1_dclk_in_n(tx1_dclk_in_n),
        .tx1_dclk_in_p(tx1_dclk_in_p),
        .tx1_dclk_out_n(tx1_dclk_out_n),
        .tx1_dclk_out_p(tx1_dclk_out_p),
        .tx1_enable(tx1_enable),
        .tx1_idata_out_n(tx1_idata_out_n),
        .tx1_idata_out_p(tx1_idata_out_p),
        .tx1_qdata_out_n(tx1_qdata_out_n),
        .tx1_qdata_out_p(tx1_qdata_out_p),
        .tx1_strobe_out_n(tx1_strobe_out_n),
        .tx1_strobe_out_p(tx1_strobe_out_p),
        .tx2_dclk_in_n(tx2_dclk_in_n),
        .tx2_dclk_in_p(tx2_dclk_in_p),
        .tx2_dclk_out_n(tx2_dclk_out_n),
        .tx2_dclk_out_p(tx2_dclk_out_p),
        .tx2_enable(tx2_enable),
        .tx2_idata_out_n(tx2_idata_out_n),
        .tx2_idata_out_p(tx2_idata_out_p),
        .tx2_qdata_out_n(tx2_qdata_out_n),
        .tx2_qdata_out_p(tx2_qdata_out_p),
        .tx2_strobe_out_n(tx2_strobe_out_n),
        .tx2_strobe_out_p(tx2_strobe_out_p),
        .tx_output_enable(tx_output_enable));
endmodule
