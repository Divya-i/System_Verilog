// Code your design here
module blocking_asgnmnts;
  
  int a,b;
  int x,y;
  
  initial begin 
    
    a = 10;
    b = 15;
    
    x = a + b;
    y = a + b + x;
    
    $display("value of x : %0d",x);
    $display("value of y : %0d",y);
    
  end
endmodule
    