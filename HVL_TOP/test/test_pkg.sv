//--------------------------------------------------------------------------------------------
// Package: Test
// Description:
//  Includes all the files written to run the simulation
//--------------------------------------------------------------------------------------------
package test_pkg;

  //-------------------------------------------------------
  // Import uvm package
  //-------------------------------------------------------
  import uvm_pkg::*;
  `include "uvm_macros.svh"
        
  //-------------------------------------------------------
  // Include all other files
  //-------------------------------------------------------
  
  `include "test.sv"
  
  `include "env_top.sv"
  `include "env.sv"
  `include "virtual_sequencer.sv"
  `include "virtual_sequence.sv"
  
  `include "slave_agent_top.sv"
  `include "slave_agent.sv"
  `include "slave_tx.sv"
  `include "slave_sequence.sv"
  `include "slave_sequencer.sv"
  `include "slave_driver.sv"
  `include "slave_monitor.sv"

endpackage
