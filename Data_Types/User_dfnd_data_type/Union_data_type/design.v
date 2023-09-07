// Code your design here
module union_data_type;
  typedef union packed {
    int a;
    bit[31:0] b;
    logic[31:0] c;
  } my_union;
  
  initial
    begin
      
      my_union u;
      
      u.a = 32'd21;
      u.b = 32'b101011;
      u.c = 32'b010101;
    
      
      $display("union:: a = %0d, b = %0b, c = %0b", u.a,u.b,u.c);
      
    end
endmodule