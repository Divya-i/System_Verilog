module semaphore_exmpl;

class A;
  semaphore s_1 = new(1); 

  task automatic display();
    s_1.get(); 
    $display("Current simulation time: %t", $time);
    #60;
    s_1.put(); 
  endtask
endclass

initial begin 
  A obj; 
  obj = new();
  obj.display(); 
  obj.display(); 
end

endmodule
