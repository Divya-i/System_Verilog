// Code your design here
//Implementation of RANDC function in sv without using RANDC variable.

module tb;
  class A ;
    rand bit [1:0] a;
    bit [1:0] q [$];
    
    constraint c1 { !(a inside {q});}
    
    function void pre_randomize();
      if (q.size() == 4)
        q = {};
    endfunction 
    
    function void post_randomize();
      q.push_back(a);
    endfunction
  endclass
  
  initial begin 
    A a1 = new();
    
    repeat(8) begin 
      a1.randomize();
      $display(" value of a : %0d", a1.a);
    end
  end
endmodule
    