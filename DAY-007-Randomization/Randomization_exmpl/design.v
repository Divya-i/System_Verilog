// Code your design here
module m1;
  
  class A;
    
    rand  bit [3:0] a;
    randc bit [3:0] b;
    
    
  endclass
  
  initial begin 
    
    A a1 = new();
    a1.a.rand_mode(0);
          
repeat(5)
    begin
     a1.randomize();
    
   $display("  a : %0d \t b : %0d",a1.a,a1.b); 
    end
  
   $display(" a.rand_mode() :%0d \t b.rand_mode() :%0d",a1.a.rand_mode(),a1.b.rand_mode());

    
  end
endmodule
    
    