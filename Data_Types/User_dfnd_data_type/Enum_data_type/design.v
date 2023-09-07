// Code your design here

module user_dfnd_enum;
  
  typedef enum  {maths,chemistry,physics,social } subjcts;
  subjcts f1;
  
  initial
    begin
      
      f1 = f1.first;
      for(int i=0;i<4;i++)
      
     begin
       $display("names :: value 0f %0s  is  %0d",f1.name, f1);
       f1 = f1.next;
     end
    end
endmodule