// Code your design here
module dynmc_arry_loctr_mthd_exmpl;
  
  int a_1[];
  int result[$];
  
  initial
    begin
      
      a_1 = new[6];
     
      a_1 = '{4,5,8,9,2,1};
      
     
      result = a_1.find(x) with (x > 2);
      $display("\n find(x)          :  %p",result);
      
      result = a_1.find_index with (item == 4); ;
      $display(" find_index        : result[%0d] = 4",result[0]);
      
      result = a_1.find_first with (item < 5 & item >= 2);
      $display(" find_first        : %p",result);
      
      result = a_1.find_first_index(x) with (x > 2);
      $display(" find_first_index  : %p",result);
      
      result = a_1.find_last with (item  <= 8 & item > 4);
      $display(" find_last         : %p",result);
      
      result = a_1.find_last_index(x) with (x > 6) ;
      $display("find_last_index    : %p",result);
      
      result = a_1.min();
      $display("min          : %p",result);
      
      result = a_1.max();
      $display("max          : %p",result);
      
      result = a_1.unique();
      $display("unique       : %p",result);
      
      result = a_1.unique(x) with (x < 2);
      $display("unique x     : %p",result);
      
      result = a_1.unique_index();
      $display("unique_index : %p",result);
    
    end
endmodule
      