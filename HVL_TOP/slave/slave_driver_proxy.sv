`ifndef _SLAVE_DRIVER_INCLUDED_
`define _SLAVE_DRIVE_INCLUDED_

//--------------------------------------------------------------------------------------------
// class: slave_driver_proxy
// class description
// this class provides conversion of transaction level to pin level 
//--------------------------------------------------------------------------------------------
class slave_driver_proxy extends uvm_driver #(txn);

  //Register with factory so can use crate uvm_method and
  //override in future if necessary
  `uvm_component_utils(slave_driver_proxy)


  //--------------------------------------------------------------------------------------------
  // Externally used Tasks and Functions
  //--------------------------------------------------------------------------------------------
  extern function new(string name, uvm_component parent);
  extern function void build_phase(uvm_phase phase);


endclass

//--------------------------------------------------------------------------------------------
//constructor: new
//initialize the slave_driver_proxy class components
//
//parametsr:
//name - instance name of the slave driver
//parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function new(string name, uvm_component parent);
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
  super.build_phase(phase);
endfunction

`endif
