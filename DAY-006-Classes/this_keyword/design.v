// Code your design here
module tb;
  
  class A;
    
    int a_1,a_2;
    
    function new(int a_1,a_2);
     this.a_1 = a_1;
     this.a_2 = a_2;
    endfunction 
    
    function void display();
      $display("value of a_1 : %0d",a_1);
      $display("value of a_2 : %0d",a_2);
    endfunction 
  endclass
  
  initial 
    begin 
      
      A a1 = new(5,6);
      a1.display;
      
    end
endmodule
      