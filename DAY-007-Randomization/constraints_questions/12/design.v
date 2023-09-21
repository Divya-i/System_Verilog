module tb;
  class A;
    
    rand bit [7:0] a_1[];
    rand bit [1:0] b;
    
    constraint c1 { a_1.size() inside {[5:10]} ; }
    constraint c2 { if(b) {foreach(a_1[i]) 
      if (i > 0)
        a_1[i] >= a_1[i-1];
                          }
      else
      { foreach(a_1[i])
        if ( i  > 0)
          a_1[i] <= a_1[i-1];}
    }
    
    function void display();
      if (b) begin
        $display("\n Ascending Order:");
        foreach(a_1[i])
          $display("array elements a_1[%0d] : %0d", i, a_1[i]);
      end else begin
        $display("\n Descending Order:");
        foreach(a_1[i])
          $display("array elements a_1[%0d] : %0d", i, a_1[i]);
      end
    endfunction
      
  endclass
  
  initial begin 
    
    A a1 = new();
    
    repeat(3) begin 
      a1.randomize();
      a1.display();
    end
  end
endmodule
