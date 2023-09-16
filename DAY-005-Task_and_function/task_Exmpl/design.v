module Test;

  task task1;
    $display("Task 1 executed");
  endtask

  task task2;
    $display("Task 2 executed");
  endtask

  initial begin
    $display("Starting tasks...");

    fork
      task1;
      task2;
    join_any

    $display("All tasks completed.");
    $finish;
  end

endmodule
