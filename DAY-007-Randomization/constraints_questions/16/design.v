/*Write a constraint - divisible by 5.*/

module tb;
  class A;
    
    rand bit [7:0] a;
    
    constraint c1 { a % 5 == 0; }
    
    function void display();
      $display(" the given number : %0d is dvsbl by 5 ", a);
    endfunction 
  endclass
  
  initial begin 
    A a1= new();
    
    repeat(10) begin 
      a1.randomize();
      a1.display();
    end
  end
endmodule
