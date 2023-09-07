// Code your design here
module array_exmpl;
  int array2 [0:5];
  int array3 [0:2][0:3];
  
  
  initial
    begin
      
      array2 ='{0,1,2,3,4,5};
      array3 = '{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
      
      foreach(array2[i])
        $display("array2[%0d] = %0d", i , array2[i]);
      
      $display(".................................");
      
      
      
      foreach(array3[i,j])
        
        $display("array3[%0d][%0d] = %0d", i ,j, array3[i][j]);
      
    end
endmodule