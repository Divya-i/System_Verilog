// Code your design here
module tb;
  
  class A;
    
    int a ,b;
    
    function new();
      a = 6;
      b = 9;
    endfunction 
    
    function void display();
      $display(" value of a : %0d", a);
      $display(" Value of b : %0d", b);
    endfunction
  endclass
  
  initial
    begin 
      
      A a1,a2;
      a1 = new();
      a2 = a1;
      $display(".........a2.......");
      a2.display;
      $display(".........a1.......");
      a1.display;
      a2.a = 10;
      $display(".........a2 after chng using a2 hndl.......");

      a2.display;
      $display(".........a1 aftr chng usng a2 hndl.......");

      a1.display;
    end
endmodule
      
      
      
      