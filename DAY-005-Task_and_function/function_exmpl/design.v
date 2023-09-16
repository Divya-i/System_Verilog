// Code your design here
module function_sv;
  
  int x,y,z,w,t;
  
  function int sum(input int a,b);
    sum = a + b;
  endfunction
  
  function int sum1;
    input int c,d;
    sum1 = c + d;   
  endfunction
  
  function int sum2;
    input int e,f;
    return e + f;   
  endfunction
  
  function void current_time;
    $display("\tCurrent simulation time is %0d",$time);    
  endfunction
  
  function int sum3;
    input int g,h;
    return g + h;    
  endfunction

  function int sum4;
    input int i,j;
  return i + j;    
  endfunction
  
  initial
    begin
      
      x = sum(10,50);
      $display("\n value of x : %0d",x);
      
      
      y = sum1(10,5);
      $display(" value of y : %0d",y);
      
      $display("\n.....function with return value....");

      z = sum2(10,25);
      $display(" value of z = %0d",z);
      
      $display("\n.....void_function.......");
      #20;
      current_time();
      #40;
      current_time();
      
      $display("\n.....discarding the retun value.........");

      
      $display("Calling function with void");
      void'(sum3(10,5));
      
     
      $display("\n.....function call as an exprsn.....");

      
      t = 10 + sum(10,4);
      $display(" value of t = %0d",t);
      
      
    end
  
endmodule