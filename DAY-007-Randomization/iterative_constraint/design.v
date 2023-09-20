// Code your design here
module tb;
  
  class A;
    
    rand int a_1[];
    rand int a_2[];
    
    constraint a_1_size { a_1.size < 6 ;}
    constraint a_2_size { a_2.size == a_1.size;}
    constraint a_1_data { foreach( a_1[i]) a_1[i] inside {2,4,6,8};}
    constraint a_2_data { foreach( a_2[i]) a_2[i] inside {1,3,5,7};}
    
  endclass
  
  initial begin 
    A a1 = new();
    
    repeat(3)
      begin 
        a1.randomize();
  $display(" a_1_size : %0d \t a_2_size : %0d", a1.a_1.size(), a1.a_2.size());
        foreach (a1.a_1[i])
          begin
  $display(" a_1 : %0d \t a_2 : %0d", a1.a_1[i], a1.a_2[i]);
      end
  end
  end
endmodule
    