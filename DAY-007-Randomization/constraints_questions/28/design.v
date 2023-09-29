/*Write a SystemVerilog program to randomize a 32-bit variable, but only randomize the 12th bit.*/

module tb;
  
  class a_1;
    rand bit [31:0] a;
    
    constraint c_1 {
      foreach (a[i]) {
        if (i == 12) {
          a[i] inside {0,1};
        } else {
          a[i] == 0;
        }
      }
    }
    
    function void post_randomize();
      $display("a:");
      foreach (a[i]) begin
        $display("Bit %0d: %b", i, a[i]);
      end
    endfunction 
  endclass

  initial begin 
    a_1 a11 = new();
    repeat(2) begin
      a11.randomize();
      a11.post_randomize();
    end
  end
endmodule
          
          