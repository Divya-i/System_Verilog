module sv_data_types;
  
  reg  [15:0] reg_var;      // 8-bit signed reg
  logic [7:0] logic_var;  // 8-bit unsigned logic (same as bit [7:0])
  integer int_var;        // 32-bit signed integer

  initial 
    begin
      
      reg_var = -16'sb1111111111010110;        // -42 - signed reg
      logic_var = 8'b1010;  // 10 - unsigned logic
      int_var = 123456;     // 123456 - signed integer
      
      $display("reg_var  : size=%0d, value = %0d", $bits(reg_var), reg_var);
      $display("logic_var: size=%0d, value = %0b", $bits(logic_var), logic_var);
      $display("int_var  : size=%0d, value = %0d", $bits(int_var), int_var);
    end
endmodule
