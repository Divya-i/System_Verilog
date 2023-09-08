// Code your design here
module queue_mthds_exmpl;
  
  int q_1 [$:7]; //bounded
  string q_2[$]; // unbounded
  int q_3;
  
  initial
    begin
      
      q_1 = {0,1,2,3,4,5,6};
      q_2 = {"red", "orange", "blue", "pink"};
      
      //size 
      $display(" size of q_1 is %0d", q_1.size());
      foreach(q_1[i])
      $display(" elmnts in q_1[%0d] = %0d", i, q_1[i]);
      
      $display("\n size of q_2 is %0d", q_2.size());
      foreach(q_2[i])
      $display("elmts in q_2 is q_2[%0d] = %0s ", i, q_2[i]);
      
      //insrt mthd
      q_2.insert(3,"purple");
      $display("\n  size after insrting is %0d", q_2.size());
      foreach(q_2[i])
      $display( "  elmnts in q_2 is q_2[%0d] = %0s", i, q_2[i]);
      
      //dlt mthd
      q_1.delete(6);
      $display(" \n  size after dlt is %0d", q_1.size());
      foreach(q_1[i])
      $display(" elmnts in q_1[%0d] = %0d",i,q_1[i]);
      
      //push_front
      q_1.push_front(16);
      $display("\n  size after push_front is %0d", q_1.size());
      foreach(q_1[i])
      $display(" elmnts in q_1[%0d] = %0d",i, q_1[i]);
      
      //push_bck
      q_1.push_back(66);
      $display(" \n size after push_back is %0d", q_1.size());
      foreach(q_1[i])
      $display("  elmnts in q_1[%0d] = %0d",i, q_1[i]);
     
      //pop_front
      q_3 =  q_2.pop_front();
      $display("\n\t q_2 pop_front value is %0s", q_3);
      $display(" \t size of q_2 is %0d", q_2.size());
      foreach(q_2[i])
        $display(" \t elmnts in q_2[%0d] = %0s", i, q_2[i]);
      
      //pop_bck
      q_3 =  q_2.pop_back();
      $display("\n\t q_2 pop_bck value is %0s", q_3);
      $display(" \t size of q_2 is %0d", q_2.size());
      foreach(q_2[i])
        $display(" \t elmnts in q_2[%0d] = %0s", i, q_2[i]);
      
    end
endmodule