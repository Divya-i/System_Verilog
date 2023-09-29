/*Write a constraint in such a way that for read transaction 30% time and for write transaction 70% time.*/

module tb;

class transaction;
  rand bit rw; // 1 for write, 0 for read
   rand int r;

  constraint transaction_type {

    (r >= 0 && r < 30) -> rw == 0;
    (r >= 30 && r < 100) -> rw == 1;

    r inside {[0:99]};
  }

endclass
  
initial begin
  transaction t_1 = new();

  repeat (10) begin
    t_1.randomize();
    if (t_1.rw == 1)
      $display("Write transaction");
    else
      $display("Read transaction");
  end
end

endmodule
