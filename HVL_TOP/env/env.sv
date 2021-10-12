`ifndef ENV_INCLUDED_
`define ENV_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: env
// Description:
//  Environment contains slave agent and virtuaal sequencer
//--------------------------------------------------------------------------------------------
class env extends uvm_env;

  //-------------------------------------------------------
  // Factory registration to create uvm_method and override it
  //-------------------------------------------------------
  `uvm_component_utils(env)

  slave_agent sa;
  virtual_sequencer v_seq;

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "env", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);

endclass : env

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - env
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function env::new(string name = "env",
                                 uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Function: build_phase
// Description:
//  Create required ports
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void env::build_phase(uvm_phase phase);
  super.build_phase(phase);
endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// Description:
//  To connect driver and sequencer
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void env::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
endfunction : connect_phase

`endif

