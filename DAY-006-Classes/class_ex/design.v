// Code your design here
class classs;
  
  int x, y ; //class properties
  
  task set(int i,j); //class methods
    x = i;
    y = j;
  endtask
  
  function int get_x();
    return x;
    endfunction
  
  function int get_y();
    return y;
    endfunction
  
endclass

module class_ex;
  
  classs c_1 = new();
  classs c_2 = new();   //class instances and objct creation
  
 /* classs c_1;
  c_1 = new();*/ // can't declr like this like direct assignment is not possible without procedural block in sv
  
  initial
    begin
      
     /// c_1 = new();
     // c_2 = new(); //object creation
      
      c_1.set(10,40);
      c_2.set(20,30);
      
      $display("value of x is %0d, %0d", c_1.get_x(),c_1.get_y());
      $display("value of x is %0d, %0d", c_2.get_x(),c_2.get_y());
    end
endmodule
  
  
  