/*Constraint to generate unique numbers between 99 to 100.*/

module tb;
  class A;
    rand bit [7:0] a;
    rand bit [7:0] b; 
    
    constraint c1 { a inside {[99:100]}; }
    constraint c2 { unique {b} ; }
    
    function void pre_randomize();
      b = a;
    endfunction 
  endclass
  
  initial begin 
    
    A a_1 = new();
    
    repeat(6) begin 
      a_1.randomize();
      $display(" unique no's b/w 99:100 r : %0d", a_1.b);
    end
  end
endmodule
  