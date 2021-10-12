  `ifndef SLAVE_AGENT_INCLUDED_
  `define SLAVE_AGENT_INCLUDED_

  //--------------------------------------------------------------------------------------------
  // Class: slave_agent
  // <Description_here>
  //--------------------------------------------------------------------------------------------
  class slave_agent extends uvm_agent;

  //register with factory so can use create uvm_method
  //and override in future if necessary

   `uvm_component_utils(slave_agent)
  //declaring handles for agent config driver monitor and sequencer

  slave_driver s_drv;
  slave_monitor s_mon;
  slave_sequencer s_seqr;


  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "slave_agent", uvm_component parent);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);

  endclass : slave_agent

  //--------------------------------------------------------------------------------------------
  // Construct: new
  //initializes the slave_mon class object
  //
  // Parameters:
  //  name - instance name of the  slave_mon
  //  parent - parent under which this component is created
  //--------------------------------------------------------------------------------------------
  function slave_agent::new(string name = "slave_agent",
                                 uvm_component parent);
    super.new(name, parent);
  endfunction : new

  //--------------------------------------------------------------------------------------------
  // Function: build_phase
  // creates the required ports
  //
  // Parameters:
  //  phase - stores the current phase
  //--------------------------------------------------------------------------------------------
  function void slave_agent::build_phase(uvm_phase phase);
    super.build_phase(phase);


  endfunction : build_phase

  //--------------------------------------------------------------------------------------------
  // Function: connect_phase
  // create the required ports
  //
  // Parameters:
  //  phase - stores the current phase
  //--------------------------------------------------------------------------------------------
  function void slave_agent::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
  endfunction : connect_phase


`endif

