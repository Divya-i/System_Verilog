/*How can we generate the factorial of the first 5 even numbers using constraints in SystemVerilog?*/

module tb;
  class A;
    rand int a_1[];
    constraint c1 { a_1.size == 5; }
    constraint c2 { foreach(a_1[i])
      a_1[i] == fact (i  * 2) ;}
    
    function int fact( int j);
      if ( j == 0)
        fact = 1;
      else 
        fact = j * fact(j - 1);
    endfunction 
  endclass
   
  A a1;
  
  function void display();
    a1 = new();
    a1.randomize();
   
    $display("\n Factorials of the first 5 even numbers:");
    foreach (a1.a_1[i]) begin
      $display("%d! = %d", i * 2, a1.a_1[i]);
    end
  endfunction 

  initial begin 
    display(); 
  end
endmodule
