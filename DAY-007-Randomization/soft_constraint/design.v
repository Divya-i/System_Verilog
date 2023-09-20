// Code your design here
module tb;
  class A;
    rand bit [3:0] a;
   
    constraint c1 { soft a < 6;}
  endclass
  
  initial begin 
    
    A a1 = new();
    
    repeat(6) begin 
      a1.randomize() with { a > 6;};
      $display(" value of a : %0d", a1.a);
    end
  end
endmodule