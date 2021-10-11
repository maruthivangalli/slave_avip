  `ifndef VIRTUAL_SEQUENCE_INCLUDED_
  `define VIRTUAL_SEQUENCE_INCLUDED_

  //--------------------------------------------------------------------------------------------
  // Class: virtual_sequence
  // Description of the class
  // this class contains the handle of actual sequencer pointing towards them
  //--------------------------------------------------------------------------------------------
  class virtual_sequence extends uvm_sequence #(uvm_sequence_item);

  //register with factory so can use create uvm_methods
  //and override in future if neccessary

  `uvm_object_utils(virtual_sequence)

  //declaring handles for slave sequencer and environment config
    
    slave_sequencer  handle_name;
    env_config  handle_name;

  //declaring virtual sequencer handle
    virtual_sequencer v_sequencer;

  //declaring handles for slave extended class
    sseq1 handle_name;


  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "virtual_sequence",uvm_component parent);
  extern task body();

  endclass : virtual_sequence

  //--------------------------------------------------------------------------------------------
  // Construct: new
  //initialize the slave_mon class object
  //
  // Parameters:
  //  name - instance name of the  virtual_sequence
  //  parent - parent under which this component is created
  //--------------------------------------------------------------------------------------------
  function virtual_sequence::new(string name = "virtual_sequence",uvm_component parent);
    super.new(name);
  endfunction : new
  
  //-------------------------------------------------------
  //task :body
  //creates the required ports
  //
  //parameters:
  //phase -stores the current phase
  //-------------------------------------------------------

  task virtual_sequence::body();
  

  endtask:body
  `endif

