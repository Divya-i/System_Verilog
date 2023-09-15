// Code your design here
module priority_if;
  
  int a,b,c;
  
  initial begin 
    
    a = 20;
    b = 40;
    c = 60;
    
    
    priority if(a > b )
    $display("a is greater than b");
    else if(a > c)
      $display(" a is greater than c");
    else
      $display(" \n a is less than b,c");
  end
endmodule