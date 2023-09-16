// Code your design here
module task_exmpl;    //static task
  
  int x,x1,y,z;
  
  task sum(input int a, b, output int c); // task definition
    c = a + b;
  endtask
  
  task automatic sum1( input int a,b, output int c);
    c = a + b;
  endtask
  
  task prdct(input int a,b, output int c);
    c = a* b;
  endtask
  
  task power;
    input int a,b;
    output int c;
    c = a ** b;
  endtask
   
  initial
       begin
      
      sum( 10,50,x);   // task call
      $display(" value of x is %0d", x);
      
         $display("\n ......automatic_task....");
      sum1(10,50,x1);
         $display(" value of x1 is %0d", x1);
      
      prdct( 10, 50 , y);
         $display(" value of y is %0d", y);
      
      power(2,3,z);
         $display(" value of z is %0d", z);
      
    end
endmodule
    
    