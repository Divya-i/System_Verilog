/*Without using randomization method or rand keyword(modifiers), generate an array of unique values.*/

module tb;
  
  int a[6];
  
  initial begin 
  
  foreach(a[i])
    begin 
      a[i] = i;
    end
  a.shuffle();
  $display("value of array a :%p", a);
  end
endmodule
  