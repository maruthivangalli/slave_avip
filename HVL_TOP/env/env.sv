`ifndef _ENV_INCLUDED_
`define _ENV_INCLUDED_
//--------------------------------------------------------------------------
//Class:env
//User- defined environment is derived from uvm_env,uvm_env is inherited from uvm_component.
//Environment is the container class, it contains one or more agent_tops,
//as well as other components such as
//------------------------------------------------------------------------
class env extends uvm_env;
//register with factory so can use create uvm_method
//and overide in future if necessary

  `uvm_component_utils(env)
// Declaring handles for env config and slave agent config
  env_config e_cfg;
  slave_agent_config s_cfg;
//Declaring handles for  master agent
  slave_agent agt;

//Externally defined functions
  extern function new(string name="env",uvm_component parent);
  extern function void build_phase(uvm_phase phase);
  extern function void connect_phase(uvm_phase phase);
endclass:env

//-------------------------------------------------------------------------
//Constructor:new
//Initialize the class object
//---------------------------------------------------------------------------
function env::new(string name="uvm_component parent");
  super.new(name,parent);
endfunction: env

//-------------------------------------------------------------------------
//Function:build_phase
//Crete the required ports
//parameters:
//phases -stores the current phase
//------------------------------------------------------------------------
function void env::build_phase(uvm_phase phase);
  super.build_phase(phase);
 // agt = slave_agt::type_id::create("agt",this);
endfunction:build_phase

//-------------------------------------------------------------------------
//Function:connect phase
//------------------------------------------------------------------------
function void env::connect_phase(uvm_phase phase);
super.connect_phase(phase);
endfunction:connect_phase

`endif
