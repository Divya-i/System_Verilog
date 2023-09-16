// Code your design here
module scoper_rsltn_operator;
  
  class c_1;
    
    bit[7:0] addrs;
   static bit[7:0] id;
    
    function void display(bit[7:0] a,b);
      $display("\n values of a, b r %0d,%0d",a,b);
    endfunction
  endclass
  
  initial
    begin 
      
    int  id = 10;
      c_1 c1;
      
      c1 = new();
      c_1::id = 20;
      c1.display(c_1::id,id);
    end
endmodule