/*How to generate a sequence of 10 random single-bit values that alternate between 0 and 1 like 101010101010?*/

module tb;
  class A;
    rand bit seq[0:9];

    constraint c1 {
      foreach (seq[i]) {
        if (i % 2 == 0)
          seq[i] == 1'b1;
        else
          seq[i] == 1'b0;
      }
    }

   function void display();
      foreach (seq[i]) begin
        $display("%b", seq[i]); 
      end
    endfunction
      
  endclass

  initial begin
    A a1 = new();
    a1.randomize(); 
    a1.display(); 
  end
endmodule