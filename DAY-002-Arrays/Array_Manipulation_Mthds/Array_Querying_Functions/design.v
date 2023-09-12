// Code your design here
module array_query_example;

  int my_array[0:4]; 
  int a_1[];
  
  

  initial begin
    a_1 = new[6];
  
    
    $display(".............dynamic_array.................");
    
    $display("Array dimensions       : %0d", $dimensions(a_1)); 
    $display("Array left bound       : %0d", $left(a_1));       
    $display("Array right bound      : %0d", $right(a_1));     
    $display("Array size             : %0d", $size(a_1));           
    $display("Array increment        : %0d", $increment(a_1));   
    $display("Array high             : %0d", $high(a_1));             
    $display("Array low              : %0d", $low(a_1));  
    
    $display(".............fixed_array.................");

    $display("Array dimensions       : %0d", $dimensions(my_array)); 
    $display("Array left bound       : %0d", $left(my_array));       
    $display("Array right bound      : %0d", $right(my_array));     
    $display("Array size             : %0d", $size(my_array));           
    $display("Array increment        : %0d", $increment(my_array));   
    $display("Array high             : %0d", $high(my_array));             
    $display("Array low              : %0d", $low(my_array));              
    $finish;
  end

endmodule
