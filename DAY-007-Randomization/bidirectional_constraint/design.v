// Code your design here
module tb;
  class A;
    
    rand bit [3:0] a;
    rand bit [3:0] b;
    rand bit [3:0] c;
    
    constraint c1 { a == b + c; }
    constraint c2 { b > 6; }
    constraint c3 { c < 6; }
  endclass
  
  initial begin 
    
    A a1 = new();
    
    repeat(6)
      begin
        a1.randomize();
        $display(" value of a : %0d \t b : %0d \t c : %0d", a1.a,a1.b,a1.c);
      end
  end
endmodule