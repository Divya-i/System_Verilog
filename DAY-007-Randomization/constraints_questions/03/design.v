/* Write a single constraint to generate random values for bit [8:0] variable in the below range, 1-34, 127, 129-156, 192-202,257-260.*/

module tb;
  class A;
    rand bit [8:0] a;
    
    constraint c1 { a inside {[1:34], 127,[129:156],[192:202],[257:260]}; }
   endclass
  
  initial begin 
    
    A a_1 = new();
    
    repeat(20) begin 
      a_1.randomize();
      $display(" value of a : %0d", a_1.a);
              end
  end 
endmodule
                   