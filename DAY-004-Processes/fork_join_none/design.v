// Code your design here
module fork_join_none;
  
  initial
    begin
      
      fork
        begin
          $display($time,"\t process 1 started");
          #4 $display($time,"\t process 1 finished");
          
        end
        
        begin
          $display($time,"\t process 2 started");
          #4 $display($time,"\t process 2 finished");
        end
        
      join_none
      
      $display($time,"\t out of fork_join_none");
      
      
    end
endmodule
          