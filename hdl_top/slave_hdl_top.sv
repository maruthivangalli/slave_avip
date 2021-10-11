
//--------------------------------------------------------------------------------------------
// Module      : HDL Top
// Description : Has a interface and slave agent bfm.
//--------------------------------------------------------------------------------------------
module slave_hdl_top;
  
  //SPI interface instantiation
  slave_spi_interface inf();

  //SPI BFM agent instantiation
  slave_agent_bfm slave_agent_bfm_h(.inf(inf));

endmodule
