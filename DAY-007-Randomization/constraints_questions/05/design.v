/*Write a constraint to generate a random value for a var1 [7:0] within 50 and var2 [7:0] with the non-repeated value in every randomization?*/

module tb;
  class A;
    rand bit [7:0] var1;
    rand bit [7:0] var2;
    
    constraint c1 { var1 inside {[0:50]}; }
    constraint c2 { unique {var2}; }
    
  endclass
  
  initial begin 
    A a_1 = new();
    
    repeat(4) begin 
      a_1.randomize();
      $display("value of var1 : %0d \t var2 : %0d", a_1.var1,a_1.var2);
    end
  end
endmodule