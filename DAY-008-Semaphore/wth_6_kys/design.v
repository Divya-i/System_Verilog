// Code your design here
module semaphore_ex_wth_6_keys;
  class A;
    semaphore s_1 = new(6);
    
    task automatic display();
      s_1.get(6);
      $display("current simualtion time : %t",$time);
      #60;
      s_1.put(6);
    endtask
    
    task automatic display1();
      s_1.get();
      $display("current simualtion time : %t",$time);
      #60;
      s_1.put(); // as the total keys are 6 we are just accessing 1 key , both process gets executed at same time i.e, 120.
    endtask
    
  endclass
  
  initial begin
    A obj;
    obj = new();
    fork
    obj.display();
    obj.display();
    join
    fork
    obj.display1();
    obj.display1();
    join
  end
endmodule
      