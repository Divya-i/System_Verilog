// Code your design here
module arry_ordrng_mthd_dynamic_exmpl;
  
  int a_1[];
  int a_2[];
  int a_3[];
  int a_4[];
  
  initial
    begin
      
      a_1 = new[4];
      a_2 = new[5];
      a_3 = new[6];
      a_4 = new[3];
      
      a_1 = '{0,1,2,3};
      a_2 = '{2,5,6,9,3};
      a_3 = '{ 4,2,1,6,7,8};
      a_4 = '{2,6,8};
      
      $display("\n........reverse.......");
      $display("before:%p", a_1);
      a_1.reverse();
      $display("after:%p", a_1);
      
      $display("\n........sort......");
      $display("before:%p",a_2);
      a_2.sort();
      $display("after:%p",a_2);
               
       
      $display("\n........rsort......");
      $display("before:%p",a_3);
      a_3.rsort();
      $display("after:%p",a_3);   
      
      $display("\n........shuffle......");
      $display("before:%p",a_4);
      a_4.shuffle();
      $display("after:%p",a_4);
               
     end
 endmodule
      
      