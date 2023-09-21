/*Write a constraint to generate prime numbers between the range of 1 to 100*/

module tb;
  class A;
    rand bit [31:0] a;
    constraint c1 { a inside {[1:100]};}
    
    constraint c2 { a != 1;
                   if (a == 2)
                   { a == 2;}
                   else
                   { a % 2 != 0;}
                     
                    if ( a == 3)
                    { a == 3;}
                    else 
                    { a % 3 != 0;}
                    
                    if ( a == 5)
                    { a == 5;}
                    else
                    { a % 5 !=0;}
                    
                    if ( a == 7)
                    { a == 7;}
                    else
                    { a % 7!= 0;}
                      }
 endclass
 initial begin 
   
   A a1 = new();
   
   repeat(10) begin 
     a1.randomize();
     $display(" prime no's r : %0d", a1.a);
             end
      end
endmodule
                      
        
                    
    