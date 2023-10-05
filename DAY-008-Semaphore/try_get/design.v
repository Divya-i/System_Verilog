// Code your design here
module semaphore_ex;
  class A;
    semaphore s_1 = new(6);
    
    task automatic display(int key);
      s_1.try_get(key);
      $display("current simualtion time : %0t , got %0d keys", $time, key);
      #60;
      s_1.put(key);
   
    endtask
  endclass
  
  initial begin 
    A obj = new();
    fork
      obj.display(6);
      obj.display(6);
    join 
  end
endmodule
      
      
      
    