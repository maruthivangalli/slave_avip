`ifndef _SLAVE_MONITOR_INCLUDE_
`define _SLAVE_MONITOR_INCLUDE_


//--------------------------------------------------------------------------------------------
//Class: slave_monitor_proxy
//Description of class.
//This provides the conversion of pin level to transaction level
//--------------------------------------------------------------------------------------------

class slave_monitor_proxy extends uvm_monitor;


  //Register with factory so can use create uvm_method and 
  //override in future if necessary
  `uvm_component_utils(slave_monitor_proxy)

  //--------------------------------------------------------------------------------------------
  // Externally Defined Tasks and Functions
  //--------------------------------------------------------------------------------------------
  extern function new(string name, uvm_component parent);
  extern function void build_phase(uvm_phase phase);


endclass

//--------------------------------------------------------------------------------------------
// Constructor: new
// Initialize the slave_monitor_proxy class component
//
// parameters:
// name - instance name of the slave_monitor_proxy
// parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function new(string name="slave_monitor_proxy", uvm_component parent);
  super.new(name,parent);
endfunction


//--------------------------------------------------------------------------------------------
//Function: build_phase
//creates the required ports
//
//parameters:
//phase - stores the current phase
//--------------------------------------------------------------------------------------------
function void build_phase(uvm_phase phase);
  superb.build_phase(phase);
endfunction

`endif

