// Code your design here
module assy_arry_ordrng_mthd_exmpl;
  
  int a_1[*];
  int a_2[*];
  int a_3[*];
  int a_4[*];
  
  initial
    begin
      
      a_1[0] = 2;
      a_1[2] = 4;
      a_1[4] = 6;
      a_1[6] = 8;
      
      a_2[0] = 2;
      a_2[2] = 6;
      a_2[4] = 8;
      a_2[6] = 4;
      
      a_3[0] = 8;
      a_3[2] = 6;
      a_3[4] = 4;
      a_3[6] = 9;
      
      a_4[0] = 2;
      a_4[2] = 4;
      a_4[4] = 6;
      a_4[6] = 8;
      
      $display("\n........reverse........");
      $display("before:%p",a_1);
      a_1.reverse();
      $display("after:%p",a_1);
      
      $display("\n........sort........");
      $display("before:%p",a_2);
      a_2.sort();
      $display("after:%p",a_2);
      
      $display("\n........rsort........");
      $display("before:%p",a_3);
      a_3.rsort();
      $display("after:%p",a_3);
      
      $display("\n........shuffle........");
      $display("before:%p",a_4);
      a_4.shuffle();
      $display("after:%p",a_4);
      
    end
endmodule
      
      
      