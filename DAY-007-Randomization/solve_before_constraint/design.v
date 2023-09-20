// Code your design here
module tb;
  class A;
    rand bit  a;
    rand bit [3:0] b;
    
    constraint c1 { solve a before b ;}
    constraint c2 { (a ==1 ) -> (b == 0);}
  endclass
  
  initial begin 
    A a1 = new();
    
    repeat(10)
      begin 
        a1.randomize();
        $display("value of a : %0d \t b : %0d", a1.a,a1.b);
      end
  end
endmodule