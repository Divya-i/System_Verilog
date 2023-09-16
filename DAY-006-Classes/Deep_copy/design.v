// Code your design here
module tb;
  
  class A;
    int a,b;
    
    function new();
      a = 6;
      b = 9;
    endfunction
    
    function A copy();
      copy = new();
      copy.a = this.a;
      copy.b = this.b;
      return copy;
    endfunction 
    
  endclass
  
  class B;
    int c, d;
    A a1;
    
    function new();
      c = 10;
      d = 12;
      a1 = new();
    endfunction 
    
    function B copy();
      copy = new();
      copy.c = this.c;
      copy.d = this.d;
      copy.a1 = a1.copy;
    endfunction 
    
    function void display();
      $display("value of a :%0d", a1.a);
      $display("value of b :%0d", a1.b);
      $display("value of c :%0d", c);
      $display("value of d :%0d", d);
    endfunction 
  endclass
  
  initial 
    begin 
      B b1,b2;
      
      b1 = new();
      $display("...............b1 dsply..........");
      b1.display();
      $display("...............b2 dsply..........");
      b2 = new();
      b2.display();
      b2 = b1.copy;
      b2.a1.a = 40;
      b2.a1.b = 60;
      b2.c = 50;
      b2.d = 80;
      $display(".............chng vls usng b2 hndl nd b2 dsply........");
      b2.display();
      $display(".............chng vls usng b2 hndl nd b1 dsply........");
      b1.display();
      
    end
endmodule
      

      