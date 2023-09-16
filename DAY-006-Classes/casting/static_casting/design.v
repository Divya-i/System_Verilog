// Code your design here
module m1;
  
  real r_a;
  int i_a;
  
  initial begin 
    
    r_a = (2.1*3.6);
    i_a = int'(r_a);
    $display("value of r_a : %0f",r_a);
    $display("value of i_a : %0d", i_a);
  end
endmodule