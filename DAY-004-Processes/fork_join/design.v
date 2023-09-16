// Code your design here
module fork_join;
  
  initial
    begin
      
      fork
        begin
          
          $display($time, "\t process 1 started ");
          #1 $display($time, "\t process 1 finished");
          
        end
        
        begin
          
          $display($time, "\t process 2 started");
          #4 $display($time, "\t process 2 finished");
          
        end
        
      join
      
      $display($time, "\t outside fork-join");
    end
endmodule