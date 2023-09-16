// Code your design here
module tb;
  
  class A #(type i = int); 
    
 //parameterized class whoes datatype can be changed using "type" keyword
    
    i x;
    i y;
    
    
    function new(i x_1 = 20, i y_1= 40);
      x = x_1;
      y = y_1;
    endfunction 
    
 endclass
  
  class B#(parameter int j); //parameterized class
    int z;

  function new();
    z = j;
  endfunction
endclass
  
  A  a1;
  A #(real) a2;
  A #(string) a3;

  B#(10) b1;
  B#(20) b2;
  
  
  initial
    begin 
      
      a1 = new();
      $display(a1);
      
      a2 = new(2.5,7.99);
      $display(a2);
      
      a3 = new("we", "string");
      $display(a3);
      
      b1 = new();
      $display(b1);
      
      b2 = new();
      $display(b2);
     
      
    end
endmodule