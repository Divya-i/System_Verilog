// Code your design here
module tb;
  
  class A;
   int a;
    function void display();
      $display(" value of a: %0d",a);
    endfunction 
  endclass
  
  class B extends A;
    int b;
    function void display();
      super.display();
      $display("value of b: %0d",b);
    endfunction 
  endclass
  
  initial begin 
    
    A a1;
    B b1;
    
    b1 = new();
    
    b1.a = 10;
    b1.b = 20;
    b1.display();
    
  end
endmodule
    