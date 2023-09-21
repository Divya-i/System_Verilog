// Code your design here
/* 10. Write a constraint to generate multiples of power 2.*/

module tb;
  
  class A;
    
    rand bit [7:0] a;
    rand bit [2:0] b;
    
    constraint c1 { a == 2 ** b; }
  endclass
  
  initial begin 
    
    A a_1 = new();
    
    repeat(6) begin 
      a_1.randomize();
      $display(" multiples of power '2' : %0d", a_1.a);
    end
  end
endmodule 
      
    