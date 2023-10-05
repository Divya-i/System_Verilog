// Code your testbench here
// or browse Examples
module tb;
  class pkt;
    rand bit [2:0] a;
    rand bit [2:0] b;
  endclass
  
  pkt p = new();
  
  covergroup c_1;
    A : coverpoint p.a; // 2^3 = 8 bins r crtd
    B : coverpoint p.b;
  endgroup
  
  initial begin 
    c_1 c = new();
    repeat (15) begin 
      p.randomize();
      $display("a : %0d b : %0d", p.a,p.b);
      c.sample();
    end
  end
endmodule