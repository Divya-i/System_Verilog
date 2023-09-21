/*Having 32-bit of variable, only single bit high values need to be accessed. Write a constraint for that.*/

module tb;
  
  class A;
    rand bit [31:0] a;
    
    constraint c1 { $countones(a) == 1; }
    //only 1 bit is set to 1 while other bits r set to 0 .
  endclass
  
  initial begin 
    
    A a_1 = new();
    repeat(6) begin 
      a_1.randomize();
      $display(" value of a : %0d \t binary a : %0b", a_1.a, a_1.a);
    end
  end
endmodule
 