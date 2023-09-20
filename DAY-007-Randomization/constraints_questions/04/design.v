/*Write a constraint without an inside function to generate random values within the range of 34 to 43?*/

module tb;
  
  class A;
    rand bit [7:0] a;
    constraint c1 { a > 34;}
    constraint c2 { a < 43;}
  endclass
  
  initial begin 
    
    A a_1 = new();
    
    repeat(6) begin 
      a_1.randomize();
      $display("value of a : %0d", a_1.a);
    end
  end
endmodule