// Code your design here
module tb;
  
  class A;
    
    rand bit [3:0] a;
    string data;
    
    constraint c1 { if ( data == "small")
                      a > 6;
                   else 
                     a < 6 ;}
  endclass
  
  initial begin 
    
    A a1 = new();
    a1.data = "small";
    
    repeat(6)
      begin 
        a1.randomize();
        $display(" when data : %s , a : %0d", a1.data,a1.a);
      end
    
    a1.data = "high";
    
    repeat(6)
      begin 
        a1.randomize();
        $display("\t  when data : %s, a : %0d", a1.data,a1.a);
      end
  end
    endmodule
    