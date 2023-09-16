// Code your design here
class parent_class;
  bit[7:0] addrs;
  
  function void display();
    $display("addrs = %0d", addrs);
  endfunction 
 endclass

class child_class extends parent_class;
  
  bit[7:0] data;
  
  function void display();
    $display("data = %0d", data);
  endfunction 
endclass

module ovrdng_class_membrs;
  
  child_class c_1;
  
  initial
    begin 
      c_1 = new();
      c_1.addrs = 20;
      c_1.data  = 40;
      
      c_1.display(); // as the same display function being used for both the classes it'll get overridden and only data is shown
    end
endmodule
  