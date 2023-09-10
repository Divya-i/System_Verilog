// Code your design here
module array_ordering_mthds_fixed_ary;
  
  int a_1[0:3]; //unpkd_ary
  int a_2[0:5];
  bit [3:0] a_3[4]; //pkd_ary
  bit [5:0] a_4[6]; 
  int a_5[6];
  int a_6[6];
  
  
  initial
    begin
      
      a_1 = '{0,1,2,3};
      a_2 = '{11,2,3,6,9,16};
      a_3 = '{2,3,4,5};
      a_4 = '{1,2,3,4,5,6};
      a_5 = '{6,5,9,10,11,14};
      a_6 = '{1,2,3,4,5,6};
      
      
      $display("\n.....reverse......");
      $display("before: %p", a_1);
      a_1.reverse();
      $display("after: %p", a_1);
      
      $display("\n ......sort.......");
      $display("before:%p", a_2);
      a_2.sort();
      $display("after:%p",a_2);
      
      $display("\n........rsort(pkd_ary).......");
      $display("before: %p",a_3);
      a_3.rsort();
      $display("after:%p",a_3);
      
      $display("\n........shuffle(pkd_ary)......");
      $display("before: %p", a_4);
      a_4.shuffle();
      $display("after:%p", a_4);
      
      $display("\n........rsort(unpkd_ary).......");
      $display("before: %p",a_5);
      a_5.rsort();
      $display("after:%p",a_5);
      
      $display("\n........shuffle(unpkd_ary)......");
      $display("before: %p", a_6);
      a_6.shuffle();
      $display("after:%p", a_6);
      
      
    end
endmodule