// Code your design here
module arry_ordrng_mthd_queue_exmpl;
  
  int q_1 [$];
  int q_2 [$:3];
  int q_3 [$:6];
  int q_4 [$];
  
  initial
    begin
      
      q_1 = {0,1,2,3};
      q_2 = {4,5,2,3};
      q_3 = {7,2,3,4,6,9};
      q_4 = {4,2,3,8,9};
      
      $display("\n....reverse......");
      $display("before:%p",q_1);
      q_1.reverse();
      $display("after:%p",q_1);
      
      $display("\n....sort......");
      $display("before:%p",q_2);
      q_2.sort();
      $display("after:%p",q_2);
      
      $display("\n....rsort......");
      $display("before:%p",q_3);
      q_3.rsort();
      $display("after:%p",q_3);
      
      $display("\n....shuffle......");
      $display("before:%p",q_4);
      q_4.shuffle();
      $display("after:%p",q_4);
      
    end
endmodule
      
      
      
      
      