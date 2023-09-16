// Code your design here
module all_fork_stmnts;
  
  initial
    begin
      fork
        begin
          
          $display($time,"\t process 1 started");
          #2 $display($time,"\t process 1 finished");
          
        end
        
        begin
          
          $display($time,"\t process 2 started");
          #2 $display($time,"\t process 2 finished");
          
        end
        
      join
      
      $display($time,"\t out of fork_join");
      
      fork
        begin
          
           
          $display($time,"\t process 3 started");
          #2 $display($time,"\t process 3 finished");
          
        end
        
        begin
          
          $display($time,"\t process 4 started");
          #2 $display($time,"\t process 4 finished");
          
        end
        
      join_any
      
     // wait fork;
      
      $display($time,"\t out of fork_join_any");
      
      fork
        begin
        
         
        $display($time,"\t process 5 started");
        #2 $display($time,"\t process 5 finished");
          
        end
        
        begin
          
          $display($time,"\t process 6 started");
          #2 $display($time,"\t process 6 finished");
          
        end
        
      join_none
         wait fork;
      
      $display($time,"\t out of fork_join_none");
      
  
     $display($time,"\t all process cmpltd");
     
      
  end
endmodule
        
               
        
          