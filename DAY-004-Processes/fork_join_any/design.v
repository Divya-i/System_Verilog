// Code your design here
module fork_join_any;
  
  initial
    begin
      
      fork
        begin
        $display($time,"\t  process 1 started");
        #2 $display($time,"\t process 1 finished");
        
        end
        
        begin
          
          $display($time, "\t process 2 started");
          #4 $display($time, "\t process 2 finished");
          
        end
        
      join_any
      
      $display($time , "\t out of fork_join_any");
      
    end
endmodule