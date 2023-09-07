module dynamic_array_exmpl;
  bit [7:0] d_arry[];
  int array_2[];
  reg [0:2][0:2] d_1[];

  initial begin
    $display("memory before allocation");
    $display("size of d_arry is %0d", d_arry.size());
    $display("size of array_2 is %0d", array_2.size());
    $display("size of d_1 is %0d", d_1.size());

    d_arry = new[6];
    array_2 = new[6];
    d_1 = new[2]; 

    $display(" memory after allocation");
    $display("size of d_arry is %0d", d_arry.size());
    $display("size of array_2 is %0d", array_2.size());
    $display("size of d_1 is %0d", d_1.size());

    $display("\n after assigning elements");
      d_arry = {0, 1, 2, 3, 4, 5};
      array_2 = {0, 6, 16, 26, 36, 46};
      

    // Element 0
    d_1[0][0] = 3'b101;
    d_1[0][1] = 3'b110;
    d_1[0][2] = 3'b011;

    // Element 1
    d_1[1][0] = 3'b111;
    d_1[1][1] = 3'b000;
    d_1[1][2] = 3'b010;

   // Access and display array elements
    foreach (d_1[i, j]) begin
      $display("d_1[%0d][%0d] = %b", i, j, d_1[i][j]);
    end
    
    $display("\n elmnts of d_array r:");


    foreach (d_arry[i]) begin
      $display("d_arry[%0d] = %0d", i, d_arry[i]);
    end
    
    $display("elmnts of array_2 r:");


    foreach (array_2[i]) begin
      $display("array_2[%0d] = %0d", i, array_2[i]);
    end
  end
endmodule
