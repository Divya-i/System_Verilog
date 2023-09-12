module array_exmpl;
  
  int a_1[9:0];
   
  initial
    begin
      
       $display("......for odd numbers as values......");

      foreach(a_1[i])
        begin
          a_1[i] = i + (i + 1);
          $display(" for odd numbers:a_1[%0d] = %0d", i,a_1[i]);
        end
            
      $display("......for even numbers as values......");

      foreach(a_1[i])
        begin
           a_1[i] = i+ (i + 2);
         $display("\t for even numbers:a_1[%0d] = %0d",i,a_1[i]);
        end
      
   $display("....for even index odd value & odd index even value....");

      foreach(a_1[i])
        begin
        if(i % 2 == 0)
          begin
          a_1[i] = i + 1;
        $display("even index    :  a_1[%0d] = %0d", i,a_1[i]);
          end
          else
            begin
         $display("odd index    : a_1[%0d] = %0d", i,a_1[i]);
        end
        end
    
    $display(".....to get 10101010 seq.....");

      
      foreach(a_1[i])
        begin
          a_1[i] = i % 2;
          $display("\t  the seq is a_1[%0d] = %0d",i,a_1[i]);
        end
     
   $display(".......to get the elmnts in asndng order......");

      foreach(a_1[i])
        begin
          a_1[i] = 9 - i;
          $display(" elmnts in asndng order: a_1[%0d] = %0d", i,a_1[i]);
        end
      
      end
    endmodule
                    