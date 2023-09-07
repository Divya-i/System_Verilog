// Code your design here
module struct_exmpl;
  typedef struct { 
    
    int a;
    bit[2:0] b;
    real c;
  } my_struct;
  
  initial 
    begin
      
      my_struct s;
      
      s.a = 6'd32;
      s.b = 3'b001;
      s.c = 4.12345678;
      
      $display("struct:: a = %0d, b = %b, c= %f",s.a,s.b,s.c);
      
    end
endmodule
      
      