module tb;
  class pkt;
    rand bit [3:0] a;
    rand bit [3:0] b;
  endclass
  
  pkt p = new();
  covergroup cg;
    A : coverpoint p.a {
      ignore_bins b1 = {3, 5, 7, 9};
    }
    B : coverpoint p.b {
      illegal_bins b2 = {2, 4, 6, 8};
    }
  endgroup
  
  initial begin 
    cg c = new();
    repeat(20) begin 
      p.randomize();
      $display("a: %0d   b: %0d\n", p.a, p.b);
      c.sample();
    end
  end
endmodule
