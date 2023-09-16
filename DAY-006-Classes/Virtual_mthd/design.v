// Code your design here
module virtual_mthd;
  
   class base_clss;
     
     bit[7:0] a;
     
     //if virtual keyword is not used and also bth class mthds r dfrnt then by class b_c, the b_c mthd only will get displayed
    
   virtual function void display;
       $display(" value of a inside base_clss is %0d", a);
     endfunction
  endclass
  
       class extended_clss extends base_clss;
         
         bit[7:0] b;
         
         function void display;
           $display(" \n value of b inside extended_clss is %0d",b);
         endfunction
       endclass
  
  initial
    begin 
      
      base_clss b_c;
      extended_clss e_c;
      
     
      e_c = new();
       
 
 //e_c.a is also possible as child class can access parent class properties. in case of without using virtual keyword it'll be dsplyng base_clss mthd but the value of a will be 0 thought certain value is asgnd , this is bcz initially a is 30 , but when dclrd b_c = e_c it gets overriden nd bcms 0, to avoid we can access the same base_class value usng extend_clss hndl.
      
      e_c.b = 20; //b_c.b is not possible 
      b_c = e_c; // e_c = b_c; is also not possible
      b_c.display(); //calls the display of extnd_class
    end
endmodule