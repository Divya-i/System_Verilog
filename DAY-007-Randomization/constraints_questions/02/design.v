/*There are two constraints applied to same variable ‘A’. one will generate the value within the range of [25:50] and another expression say variable value should be greater than 40. What should be the value generated, and what is the reason?*/

module tb;
  class random;
    rand bit [7:0] A;
    
    constraint c1 { A inside  {[25:50]}; }
    constraint c2 { A > 40; }
  // in this case the value will be generated between 40:50 as the second constraint would restrict the first one.
    
  endclass
  
  initial begin 
    random r_1 = new();
    
    repeat(3) begin 
      r_1.randomize();
      $display(" value of A : %0d", r_1.A); 
    end
  end 
endmodule
    