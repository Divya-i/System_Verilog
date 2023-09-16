// Code your design here
module etrn_mthd;
  
  class data_info;
    bit[7:0] addrs;
    bit[7:0] data;
    
    extern function void display();
      endclass
      
      function void data_info::display;
        $display("\n  values of addrs is %0d & data is %0d", addrs,data);
      endfunction 
      
      initial
        begin 
          
          data_info d_1;
          d_1 = new();
          d_1.addrs = 20;
          d_1.data = 40;
          d_1.display();
        end
      endmodule
          
          