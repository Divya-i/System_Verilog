/*What is the constraint to generate the pattern 9 7 5 3 1 8 6 4 2 0 ?*/

module tb;
  
  class A;
    rand int a_1[];
    
    constraint c1 { a_1.size() ==10 ; }
    
    constraint c2 { foreach(a_1[i])
    { if ( i < 5)
      a_1[i] == 10 - ((i *2) + 1);
     else
       a_1[i] == 18 - ( i * 2);
    }
  }
      endclass
  
 initial begin 
        
        A a1 = new();
        a1.randomize();
   $display("pattern: %p", a1.a_1);
      
     end
endmodule
    
    
