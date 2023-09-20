// Code your design here
module tb;
  
  class A;
    
    rand bit [3:0] a;
    
    constraint c1 { a inside {1,3,5,7,9};}
    
  endclass
  
  initial begin 
    
    A a1 = new();
    
    $display(" value of constraint_mode : %0d", a1.c1.constraint_mode());
    $display(" wthout disabling constraint");

    repeat(6)
      begin
        a1.randomize();
        $display(" value of a : %0d", a1.a);
      end
    
     a1.c1.constraint_mode(0);

    
    $display(" value of constraint_mode : %0d", a1.c1.constraint_mode());
    $display(" after disabling constraint");
    repeat(6)
      begin
        a1.randomize();
        $display(" value of a : %0d", a1.a);
      end
      
  end
endmodule
        
    