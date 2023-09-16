// Code your design here
module abstract_class;
  
  virtual class abstrct_clss;
    bit[31:0] addr;
  endclass
  
  class extnd_abstrct_clss extends abstrct_clss;
    
    function void display;
      $display(" \n value of addr is %0d", addr);
    endfunction 
  endclass
  
  initial
    begin 
      extnd_abstrct_clss ac;
      ac = new();
      ac.addr = 16;
      ac.display;
    end
endmodule
      
    