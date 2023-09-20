// Code your design here
module tb;
  
  class randvar;
    rand bit [7:0] var1, var2, var3, var4;
  endclass
  
  initial begin 
    randvar r_1;
    r_1 = new();
    //r_1.var1.rand_mode(0);
    //r_1.var3.rand_mode(0);
    //r_1.var4.rand_mode(0);
   // to only randomize var2 we go for rand_mode to disable the randomization process.
    
    repeat(3)
      begin 
        r_1.randomize();
       
        $display(" value of var1 : %0d \t var2 : %0d \t var3 : %0d \t var4 : %0d", r_1.var1,r_1.var2,r_1.var3, r_1.var4);
      end
  end
endmodule

