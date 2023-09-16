// Code your design here
class packet;
  
  static byte no_of_pkts_rcvd;
  
  function new();
    no_of_pkts_rcvd++;
  endfunction
  
  static function void display();
    
    $display("no_of_pkts_rcvd = %0d", no_of_pkts_rcvd);
    
    endfunction
endclass

module static_mthds_wthout_objct;
  
  packet p_1[6];
  packet p_2;
  
  initial
    begin
      
      foreach(p_1[i])
        begin
          p_1[i] = new();
          p_2.display();
        end
    end
endmodule
    