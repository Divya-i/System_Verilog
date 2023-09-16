// Code your design here
class parent_class;
 protected int a;
  
  function new(int b);
    a = b + 10;
    
  endfunction 
  
  function void display();
    $display("a=%0d", a);
  endfunction 
endclass

class child_class extends parent_class;
  
  function new(int b);
    super.new(b);
  endfunction 
  
  function void incr_mnt();
     a++;
  endfunction 
endclass

module prtcd_encapsulation;
  
  parent_class p_1= new(5);
  child_class c_1 = new(6);
  
  initial 
    begin 
      
      c_1.incr_mnt(); // accessing prtcd_vrbl from extended class is allowed
      c_1.display();
      
    end
endmodule
  