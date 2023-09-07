// Code your design here

module dynamic_arry_mthds_exmpl;
  
  int a_1[];   //array declration
  bit [2:0] a_2[];
  
  initial 
    begin
      
      $display("size before memory allocation");
      $display(" size of a_1 is %0d", a_1.size());
      $display(" size of a_2 is %0d", a_2.size());
      
    
      a_1= new[2];    //memory allocation
      a_2 = new[4];
      
      $display("\t after memory allocation");
      $display("size of a_1 is %0d", a_1.size());
      $display("size of a_2 is %0d", a_2.size());
      
      
      a_1 = {1,1};      // array initialization
     // a_2 = {1,2,3,4};
      foreach(a_2[j]) a_2[j] = j;
      
      foreach(a_1[i])
        $display("\t size of a_1[%0d] = %0d", i, a_1[i]);
      foreach(a_2[i])
        $display("size of a_2[%0d] = %0d", i, a_2[i]);
      
      a_1 = new[6](a_1);  //inc size by retaining values
      a_2 = new[6](a_2);
      
      $display("\t after resizing memory by retaining values");
      $display("size of a_1 is %0d", a_1.size());
      $display("size of a_2 is %0d", a_2.size());
      
      foreach(a_1[i])
        $display("\t size of a_1[%0d] = %0d", i, a_1[i]);
      foreach(a_2[i])
        $display(" size of a_2[%0d] = %0d", i, a_2[i]);
      
      a_1 = new[10]; //incr size by over-riding values 
      a_2 = new[10];
      
      $display("\t after memory resizing by overriding values ");
      $display("size of a_1 is %0d", a_1.size());
      $display("size of a_2 is %0d", a_2.size());
      
      //foreach(a_1[i])
       // $display("\t size of a_1[%0d] = %0d", i, a_1[i]);
      //foreach(a_2[i])
        //$display("size of a_2[%0d] = %0d", i, a_2[i]);
      
      a_1.delete;
      a_2.delete;
      
      $display("\t size after deleting");
      $display("size of a_1 is %0d",a_1.size());
      $display("size of a_2 is %0d",a_2.size());
      
    end
endmodule
      
      
        
      