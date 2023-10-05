// Code your testbench here
// or browse Examples
module tb;
  class pkt;
    rand bit [2:0] a;
    rand bit [2:0] b;
  endclass
  
  pkt p = new();
  
  covergroup a_cg;
    A : coverpoint p.a { bins b1 = {1,[2:4],6};}
  endgroup 
  
  initial begin 
    
    a_cg c = new();
    repeat(20) begin 
      p.randomize();
      $display(" a : %0d b : %0d", p.a,p.b);
      c.sample();
    end
  end
endmodule
      