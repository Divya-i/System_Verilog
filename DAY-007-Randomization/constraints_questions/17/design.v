/*Derive odd numbers within the range of 10 to 30 using SV constraint*/

module tb;
  class A;
    rand bit [4:0] a;
    constraint c1 { a % 2 != 0 ; }
  endclass
  
  initial begin 
    A a1 = new();
    
    repeat(6) begin 
     a1.randomize() with {a1.a inside {[10:30]};};
      $display(" value of a : %0d", a1.a);
    end
  end
endmodule
    