/*Write a constraint to generate a variable with 0-31 bits should be 1, 32-61 bits should be 0.*/

module tb;
  class A;
    rand bit [0:61] a_1;
    constraint c1 { foreach(a_1[i])
    { if ( i >= 0 && i < 32)
     a_1[i] == 1'b1;
     else if (i >= 32 && i < 62)
     a_1[i] == 1'b0;
    }
  }
      
      function void post_randomize();
      foreach(a_1[i]) begin 
       $display(" a_1 [%0d] : %0d",i,a_1[i]);
      end
       endfunction
 endclass
                   
initial begin 
  A a1 = new();
  a1.randomize();
  a1.post_randomize(); 
  
end
endmodule
  
