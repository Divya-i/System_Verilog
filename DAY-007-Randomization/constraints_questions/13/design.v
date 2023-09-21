/*Write a constraint to generate a pattern 0102030405.*/

module tb;
  
  class A;
    rand int a_1[];
    constraint c1 { a_1.size inside{[2:20]};}
    constraint c2 { foreach(a_1[i])
    { if(i % 2 == 0)
    { a_1[i] == 0;}
     else
     { a_1[i] == (i + 1)/2 ;}
      } 
      }
       
       function void display();
     foreach(a_1[i]) begin 
    $display(" pattern is a_1[%0d] : %0d", i,a_1[i]);
     end
     endfunction
   endclass
       
       initial begin
         A a1 = new();
         repeat(10) 
         a1.randomize();
         a1.display();
       end
     endmodule
                     