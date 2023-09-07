// Code your design here
module enum_datatype;
  
  typedef enum bit[3:0] { maths= 9,chemistry,social,physics} subjcts;
  subjcts f1;
  
  initial 
    begin
   
  f1 = f1.first;
      $display(" value of 1st elmnt  %s is %0d",f1.name,f1);
  f1 = f1.last;
      $display(" value of last elmnt %s is %0d",f1.name,f1);
  f1 = f1.next;
      $display(" value of nxt elmnt %s is %0d",f1.name,f1);
  f1 = f1.next(3);
      $display(" value of nxt elmnt %s is %0d",f1.name,f1);
  f1 = f1.prev;
      $display(" value of prv elmnt %s is %0d",f1.name,f1);
  f1 = f1.prev(1);
      $display(" value of prv  elmnt %s is %0d",f1.name,f1);
  //f1 = f1.num;
      $display(" no of  elmnts are %0d",f1.num);
    end
endmodule
