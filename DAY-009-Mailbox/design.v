// Code your design here
class A;
  
  rand bit [3:0] a;
  rand bit [3:0] b;
  
  function void post_randomize();
    $display("\n Data ::  Data Generated");
    $display("Data :: a = %0d, b = %0d", a,b);
  endfunction 
endclass

///////////////////////////////////////////////////////////////////////
// Generator  - Generates the transaction Data and send to Driver
///////////////////////////////////////////////////////////////////////

class generator;
  A a_1;
  mailbox m_1;
  
  function new( mailbox m_1);
    this.m_1 = m_1;
    endfunction
  
  task run;
    repeat(2) begin 
      a_1 = new();
      a_1.randomize();
      m_1.put(a_1);
      $display("Generator :: Data is sent to mailbox ");
      #6;
    end
  endtask
endclass

//////////////////////////////////////////////////////////////////////
// Driver - Gets the data from the generator via mailbox 
//////////////////////////////////////////////////////////////////////

class driver;
  A a_1;
  mailbox m_1;
  
  function new(mailbox m_1);
    this.m_1 = m_1;
    endfunction
  
  task run;
    repeat(2) begin 
      m_1.get(a_1);
      $display("\n Driver :: Data Rcvd");
      $display("Driver :: a = %0d, b = %0d", a_1.a,a_1.b);
    end
  endtask
endclass

/////////////////////////////////////////////////////////////////////////
// testbench_top
/////////////////////////////////////////////////////////////////////////

module mailbox_ex;
  generator g_1;
  driver d_1;
  mailbox m_1;
  
  initial begin 
    m_1 = new();
    
    g_1 = new(m_1);
    d_1 = new(m_1);
    fork 
      g_1.run();
      d_1.run();
    join 
  end
endmodule 
 
  
      
    
  
      
      
    
  