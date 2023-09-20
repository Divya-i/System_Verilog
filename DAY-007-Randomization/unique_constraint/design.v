// Code your design here
module tb;
  class A;
    
    rand bit [3:0] a,b,c;
    rand bit [7:0]  a_1[6];
    
    constraint c1 { unique { a,b,c};}
    constraint c2 { unique {a_1};}
    
    function void display();
      $display(" a : %p", a);
      $display(" b : %p", b);
      $display(" c : %p", c);
      $display(" a_1 : %p", a_1);
    endfunction
  endclass
    
    initial begin 
      
      A a1 = new();
      
      repeat(6) begin 
        a1.randomize();
        a1.display();
      end
    end
    endmodule

      