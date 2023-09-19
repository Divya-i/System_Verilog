// Code your design here
module tb;
  
  class A;
    
    randc  bit [3:0] a;
    randc  bit [2:0] b;
    rand   bit [0:4] c;

    constraint c1 { a inside {[0:2],4,6,8};}
    constraint c2 { b inside {[0:3],5,7};}
    constraint c3 {!(c inside {[0:2],3,4});}

     
  endclass
  
  initial begin 
    
    A a1 = new();
    
    repeat(6)
      begin 
        a1.randomize();
        $display(" value of a : %0d, b : %0d, c : %0d", a1.a, a1.b,a1.c);
      end
  end
endmodule 
  
