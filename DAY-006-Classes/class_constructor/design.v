// Code your design here
class packet;
  bit[15:0] addr;
  bit[15:0] data;
  bit write;
  string pkt_type;
  
  function new();
    
   addr = 16'd8;
   data = 16'd4;
    write = 1;
    pkt_type = "Rcvd_pkt";
  
  endfunction
    
  function void display();
    
    $display("\n  addr = %0d", addr);
    $display("   data = %0d", data);
    $display("   write = %0d",write);
    $display("   pkt_type = %0s", pkt_type);
    
  endfunction
endclass
  
  module pkt_ex;
    
    packet p_1 = new();
    
    initial
      begin
        p_1 = new();
        p_1.display();
      end
  endmodule
      