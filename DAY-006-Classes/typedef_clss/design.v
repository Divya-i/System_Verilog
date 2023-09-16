// Code your design here
module typedef_class;
  
  typedef class c_2;  //frwd declaration of class using typedef. if this line is not used it'll throw a syntax error 
    
    class c_1;
      c_2 c2;
    endclass
    
    class c_2;
      c_1 c1;
    endclass
    
    initial
      begin 
        
        c_1 c_11;
        c_2 c_12;
        
        $display("\n inside typedef class");
        
      end
    endmodule