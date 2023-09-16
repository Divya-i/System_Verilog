// Code your design here
module tb;
  
  class A;
    int a;
  endclass
  
  class B extends  A;
    
    int b;
  endclass
    
    initial 
      begin 
        
        B b1;
        
        b1 = new();
        
        b1.a = 20;
        $display("\n value of a : %0d",b1.a);
        
        b1.b = 40;
        $display("  value of b : %0d",b1.b);
        
      end
    endmodule
      
      
      
   
  