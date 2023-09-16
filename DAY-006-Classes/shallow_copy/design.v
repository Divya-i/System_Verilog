// Code your design here
module tb;
  
  class A;
    int a,b;
    
    function new();
      a = 6;
      b = 9;
    endfunction 
  endclass
  
  class B;
    int c,d;
    A a_1;
  
    function new();
      c = 10;
      d = 12;
      a_1 = new();
    endfunction
    
    function void display();
      $display("Value of a : %0d", a_1.a);
      $display("Value of b : %0d", a_1.b);
      $display("Value of c : %0d", c);
      $display("Value of d : %0d", d);
    endfunction 
  endclass
  
  initial
    begin 
      
      B b1,b2;
      b1 = new();
      $display("..............b1...........");
      b1.display();
      b2 = new b1;
      $display("..............b2...........");
      b2.display();
    $display("...........aftrn chng values usng b2 hndl, b2 dsply.........");
      
      b2.c = 20;
      b2.d = 30;
      b2.a_1.a = 16;
      b2.a_1.b = 19;
      b2.display();
     $display("...........aftrn chng values usng b2 hndl, b1 dsply.........");
      b1.display();
      
    end
  
endmodule
      
      

      