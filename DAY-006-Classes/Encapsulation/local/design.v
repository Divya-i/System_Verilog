// Code your design here
class parent_class;
  local int a;
  
  function new(int b);
    
    a = b + 10;
    endfunction 
  function void display();
    $display("a = %0d", a);
  endfunction
endclass

module encapsulation;
  
  parent_class p_1;
  
  initial
    begin 
      p_1 = new(6);
      
     // p_1.a = 20;  //we can't access the parent class mem as it is encapsulated with local keyword, which is local to the particular class and can't be used out of it.
      p_1.display();
      
    end
endmodule 
      