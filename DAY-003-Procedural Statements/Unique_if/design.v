// Code your design here
module unique_if;
  
  int a,b,c;
  
  /*initial 
    begin 
     
      $display(" more than 1 cndtn is true: RT Warning");
      a = 10;
      b = 40;
      c = 60;
      
      unique if(a < b)
        $display(" a is less than b");
      else if (a < c)
        $display(" a is less than c ");
      else
        $display(" a is greater than b, c");
                 
      end*/
  
 /* initial
    begin
      
      $display(" No cndtn is true & no else: RT Warning");
      
      a = 60;
      b = 20;
      c = 30;
      
      unique if(a < b)
        $display(" a is less than b");
      else if (a < c)
        $display(" a is less than c ");
    end*/
      
  initial 
    begin
      
      a = 60;
      b = 40;
      c = 20;
           
      $display(" No: RT Warning as atleast 1 cndtn is being satisified");

      unique if(a < b)
        $display(" a is less than b");
      else if (a < c)
        $display(" a is less than c ");
      else
        $display(" a is greater than b, c");
    end
  
  
endmodule
                 