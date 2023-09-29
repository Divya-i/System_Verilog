/*How can you define a constraint in SystemVerilog to ensure that even locations in a random array contain odd numbers, and odd locations contain even numbers?*/
    
module tb;

class a;
  rand bit [2:0] a_1[7:0]; 

  
  constraint c {
    foreach (a_1[i]) {
      if (i % 2 == 0)   // even location
        a_1[i] % 2 == 1; // odd number
      else if (i % 2 == 1) // odd location
        a_1[i] % 2 == 0; // even number
    }
  }

  function void post_randomize();
    $display("Values of array 'a_1':");
    foreach (a_1[i])
      $display("Index %0d: %0d", i, a_1[i]);
  endfunction
endclass

initial begin
  a a1 = new();
  repeat (2) begin
   a1.randomize();
    a1.post_randomize();
  end
end

endmodule
