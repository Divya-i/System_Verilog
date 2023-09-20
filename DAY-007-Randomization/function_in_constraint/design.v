// Code your design here
module tb;
  class A;
    
    rand bit [3:0] a;
    rand bit [3:0] b;
    
    constraint c1 { a == f_1(b);}
    
    function bit [3:0] f_1(bit [3:0] b);
      if ( b < 4)
        f_1 = 0;
      else 
        f_1 = f_1 + 6;
    endfunction
      
  endclass
  
  initial begin 
    A a1 = new();
    
    repeat(6) begin 
      a1.randomize();
      $display(" value of a : %0d \t b : %0d", a1.a,a1.b);
    end
  end
endmodule
    
    