module sv_data_types;
  
  bit a;
  byte b;
  shortint c;
  int d;
  longint e;
  
  initial 
    begin
   
      a = 1'b0;         //  unsigned bit
      b = 8'b10101010;  //  unsigned byte
      c = -12345;       // signed shortint
      d = 987654;       // signed int
      e = 123456789012345; // signed longint
      
     
      $display("a: size=%0d, value=%0d", $bits(a), a, );
      $display("b: size=%0d, value=%0d", $bits(b), b, );
      $display("c: size=%0d, value=%0d", $bits(c), c, );
      $display("d: size=%0d, value=%0d", $bits(d), d, );
      $display("e: size=%0d, value=%0d", $bits(e), e, );
    end
endmodule
