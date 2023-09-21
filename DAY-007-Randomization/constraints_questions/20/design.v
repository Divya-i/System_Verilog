/*How can you generate a random number within a specified range using SystemVerilog? Write a code that generates a random number between 1.35 to 2.57 using SystemVerilog.*/

module tb;
  class A;
    rand int a_1[];
    real a[10];
    
    constraint c1 { a_1.size == 10; }
    constraint c2 {  foreach(a_1[i])
                   a_1[i] inside {[1350:2570]}; }
    
    function void post_randomize();
      foreach (a[i]) begin 
        a[i] = a_1[i] / 1000.0;
        $display(" value of a : %0f", a[i]);
      end
    endfunction 
    
  endclass
  
  initial begin 
    A a1 = new();
      a1.randomize(); 
    end
endmodule
