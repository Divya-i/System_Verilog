// Code your design here
module tb;
  
 class A;
  virtual function void display();
     $display("Inside base_clss");
   endfunction
 endclass
  
  class B extends A;
    function void display();
      $display("Inside extended clss_B");
    endfunction 
  endclass
    
    class C extends A;
      function void display();
        $display("Inside extended clss_c");
      endfunction 
    endclass
  
  initial begin 
    
    
    B b1;
    C c1;
    A a1[2];
    
    b1 = new();
    c1 = new();
    
   
    a1[0] = b1;
    a1[1] = c1;
    
    a1[0].display();
    a1[1].display();
    
  end
endmodule
     
    
     
     