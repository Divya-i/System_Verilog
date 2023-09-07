module sv_data_types;
  
  time time_var;          // Simulation time type
  shortreal shortreal_var; // 32-bit floating-point number (single-precision)
  real real_var;          // 64-bit floating-point number (double-precision)
  realtime realtime_var;  // Realtime simulation time type

  initial 
    begin
     
      time_var = 10;           
      shortreal_var = 3.14;    
      real_var = 2.71828183;   
      realtime_var = 1.234; 
      #2;

      $display("Data Type 'time'     :  Value=%0t", time_var);
      $display("Data Type 'shortreal':  Value=%f",  shortreal_var);
      $display("Data Type 'real'     :  Value=%f",  real_var);
      $display("Data Type 'realtime' :  Value=%f",  realtime_var);
      $display("Current time value for 'time'     : %0t", $time);
      $display("Current time value for 'realtime' : %0t", $realtime);
    end
endmodule
