module assy_ary_mthdds_exmpl;
  
  int a_1[string]; // string index
  
    
  typedef bit signed [3:0] nibble;   //signed packed array 
  int a_3[nibble];
    
  typedef bit [4:1] nibble1; //unsigned pckd arry
  int a_4[nibble1];
  
  int a_5[*]; //not spfd_indx_type
  int a_6;
    
  initial
  begin
    
    /*a_1["hello"] = 36;
    a_1["sad"]   = 45;
    a_1["happy"] = 79;
    a_1["world"] = 99;*/
    
    a_1 = '{"hello ": 36,
            "sad  " : 45,
            "happy" : 79,
            "world" : 99};
   
    $display("\n Size of a_1 is %0d", a_1.size());
    foreach (a_1[i])
      $display("Elements of a_1 are a_1[%0s] = %0d", i, a_1[i]);
    
     begin
      string e;
      if(a_1.first(e))
        $display("\n.........first elmnt..........");
        $display("a_1.first[%s] = %0d",e, a_1[e]);
    end
      
     begin
      string e;
       if(a_1.last(e))
         $display("\n.........last elmnt..........");
       $display("a_1.last[%s] = %0d",e, a_1[e]);
    end
      
    begin
      string e = "sad";
      if(a_1.prev(e))
        $display("\n.........prev elmnt..........");
      $display("a_1.prev[%s] = %0d",e, a_1[e]);
    end
      
     begin
      string e = "happy";
       if(a_1.next(e))
         $display("\n.........next elmnt..........");
       $display("a_1.next[%s] = %0d",e, a_1[e]);
    end
      
      
    //delete mthd, num mthd
    $display("\n.........dlt mthd..........");
    a_1.delete("happy");
    $display("no of entries in a_1 is %0d", a_1.num());
     
    foreach (a_1[i])
      $display(" Elements of a_1 are a_1[%0s] = %0d", i, a_1[i]);
   
    //exist mthd
    if (a_1.exists("hello"))
begin
  $display("  Element 'hello' exists in a_1");
end
else 
begin
  $display("\n Element 'hello' does not exist in a_1");
end

    if (a_1.exists("world"))
begin
  $display("Element 'world' exists in a_1");
end
else
begin
  $display("Element 'sad' does not exist in a_1");
end

    
    
    $display("\n.......for signed pkd_Arry_indx_typr........");
    
    
    a_3[4'b0000] = 10;
    $display("Value of a_3[4'b0000] is %0d", a_3[4'b0000]);
    
    a_3[4'b1000] = -8;
    a_3[4'b1001] = -7;
    
    $display("Value of a_3[4'b1000] is %0d", a_3[4'b1000]);
    $display("Value of a_3[4'b1001] is %0d", a_3[4'b1001]);
                                                 
    $display("\n.....unsigned_pkd_arry_index_type........");                                            
    a_4[4'b0001] = 6;
    $display("Value of a_4[4'b0001] is %0d", a_4[4'b0001]);
                                                 
    $display("\n.......index_value_not_spfd........");
                                                 
    
    repeat(3) begin
      a_5[a_6] = a_6*2;
      a_6 =a_6 + 4;
    end
    
    $display(" no of entries in a_5 is %0d", a_5.num());
    foreach(a_5[i])
      $display("elmnts in a_5 is a_5[%0d]=%0d", i, a_5[i]);
    
    //first mthd
    $display("\n......first_mthd.......");
    a_5.first(a_6);
    $display("\t first elmnt is a_5[%0d] =%0d",a_6, a_5[a_6]);
    //last mthd
    $display("\n......last_mthd.......");
    a_5.last(a_6);
    $display("\t last elmnt is a_5[%0d] = %0d", a_6,a_5[a_6]);
    //prev ,mthd
    $display("\n......prev_mthd.......");
    a_5.prev(a_6);
    $display(" \t prev elmnt is a_5[%0d] = %0d", a_6,a_5[a_6]);
    //nxt mthd
    a_5.next(a_6);
    $display("\n......next_mthd.......");
    $display("\t  nxt elmnt is a_5[%0d] = %0d", a_6,a_5[a_6]);
    
    
    
  end
endmodule
