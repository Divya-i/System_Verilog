// Code your design here
module tb;
  
  class A;
    
    string a;
    rand bit [3:0] b;
    
    constraint c1 { (a == "small") -> ( b <= 6);}
    
  endclass
  
  initial begin 
    
    
    A a1 = new();
    a1.a = "small";
     
    repeat(6)
      begin 
        a1.randomize();
        $display(" value of a : %s \t b : %0d", a1.a,a1.b);
      end
  end
endmodule