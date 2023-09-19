// Code your design here
module tb;
  
  class A;
    
    rand bit [3:0] a;
    rand bit [2:0] b;
    randc bit [4:0] c;
    
    constraint c1 { a dist { 2 := 3, [6:9] := 4, 3 := 2};}
    constraint c2 { b dist { 2 :/ 6, [3:5]  :/ 8, 7 :/ 2};}
   // constraint c3 { c dist { a,  b };}
    //randc can't be used in solve-before, dist, unique and function calls
    
  endclass
  
    initial begin 
      
      A a1 = new();
      
      repeat(16)
        begin 
          a1.randomize();
          $display(" a : %0d,  b : %0d,  c : %0d", a1.a,a1.b,a1.c);
        end
    end
    endmodule
      