// Code your design here
module non_blkng_asgnmnts;
  
  int a,b;
  int x,y;
  
  initial 
    begin 
      
      a = 10;
      b = 15;
      
      x <= a + b;
      y <= a + b + x;
      
      $display("\n value of x : %0d", x);
      $display(" value of y : %0d", y);
    end
      
      final begin
        
        $display("\n at the end of simulation x : %0d", x);
        $display(" at the end of simulation y : %0d",y);
      end
      
    
endmodule