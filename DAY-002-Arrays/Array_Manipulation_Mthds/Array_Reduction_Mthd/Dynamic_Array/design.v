// Code your design here
// Code your design here
module dynmc_arry_rdctn_mthd_exmpl;
  
  int a_1[];
  int a_2[];
  int a_3[];
  
  int sum_1;
  int prdct_1;
  int and_1;
  int or_1;
  int xor_1;
  
  initial
    begin
      
      a_1 = new[4];
      a_2 = new[6];
      a_3 = new[3];
      
      a_1 = '{0,1,2,3};
      a_2 = '{2,3,4,5,6,7};
      a_3 = '{2,4,5};
      
      sum_1 = a_1.sum();
      $display("\n sum of a_1 is %0d", sum_1);
      
      prdct_1 = a_1.product();
      $display(" prdct of a_1 is %0d", prdct_1);
      
      and_1 = a_1.and();
      $display(" bitwise and of a_1 is %0d", and_1);
      
      or_1 = a_1.or();
      $display(" bitwise or of a_1 is %0d", or_1);
      
      xor_1 = a_1.xor();
      $display(" logical xor of a_1 is %0d", xor_1);
      
      $display("\n.......arry_2.......");
      sum_1 = a_2.sum();
      $display("sum of a_2 is %0d", sum_1);
      
      prdct_1 = a_2.product();
      $display(" prdct of a_2 is %0d", prdct_1);
      
      and_1 = a_2.and();
      $display(" bitwise and of a_2 is %0d", and_1);
      
      or_1 = a_2.or();
      $display(" bitwise or of a_2 is %0d", or_1);
      
      xor_1 = a_2.xor();
      $display(" logical xor of a_2 is %0d", xor_1);
      
      $display("\n.......arry_3.......");
      sum_1 = a_3.sum();
      $display("sum of a_3 is %0d", sum_1);
      
      prdct_1 = a_3.product();
      $display(" prdct of a_3 is %0d", prdct_1);
      
      and_1 = a_3.and();
      $display(" bitwise and of a_3 is %0d", and_1);
      
      or_1 = a_3.or();
      $display(" bitwise or of a_3 is %0d", or_1);
      
      xor_1 = a_3.xor();
      $display(" logical xor of a_3 is %0d", xor_1);
      
    end
endmodule
      