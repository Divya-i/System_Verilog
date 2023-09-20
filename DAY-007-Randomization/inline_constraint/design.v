// Code your design here
module tb;
  
  class A;
    
    rand bit [3:0] a;
    rand bit [3:0] b;
    
    constraint c1 { a > 6; a < 9;}
    //constraint c2 { b inside {[2:4]};};
    
  endclass
  
  initial 
    begin 
      
      A a1 = new();
      
      repeat(6)
        begin 
          a1.randomize() with { b == 6;};
         // a1.randomize() with { b == 7;};
          $display(" value of a : %0d \t b : %0d", a1.a, a1.b);
        end
    end
      endmodule 
