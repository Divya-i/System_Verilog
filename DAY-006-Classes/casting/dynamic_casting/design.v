// Code your design here
module m1;
  
  class A;
    int a;
    function void display();
      $display("value of a : %0d",a);
    endfunction
  endclass
  
  class B extends A;
    int b;
    function void display();
      super.display();
      $display("value of b : %0d", b);
    endfunction
  endclass
  
  initial begin 
    
    A a1;
    B b1;
    
    a1 = new();
    b1 = new();
    
    a1 = b1;  // we can assign child class hndl to parent class
    //b1 = a1; 
    
// but, parent class hndl to child class is not possible inorder to do so we go "$cast"
    
    $cast(b1,a1);
    b1.a = 10;
    b1.b = 20;
    b1.display();
    
  end
endmodule
    