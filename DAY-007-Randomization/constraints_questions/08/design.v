/* Write a constraint to generate 0, 1, x and z randomly.*/

module tb;
  
  class A;
    
    rand reg a;
    rand reg b;
    
    function void post_randomize();
      b = $urandom_range(0,1);
      if (b)
       a = a ? 'x : 'z;
    endfunction 
  endclass
  
  initial begin 
    A a_1 = new();
     
    repeat(10) begin 
      a_1.randomize();
      $display(" value of a : %0d \t b : %0d", a_1.a,a_1.b);
    end
  end
endmodule