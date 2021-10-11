//--------------------------------------------------------------------------------------------
// Module      : Slave Agent BFM
// Description : Instantiates driver and monitor
//--------------------------------------------------------------------------------------------

module slave_agent_bfm(slave_spi_interface inf);
  
  //Slave driver bfm instantiation
  slave_driver_bfm slave_driver_bfm_h(inf);

  //Slave monitor bfm instantiation
  slave_monitor_bfm slave_monitor_bfm_h(inf);

endmodule
