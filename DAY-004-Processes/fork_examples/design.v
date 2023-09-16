// Code your design here
module fork_join_none_with_automatic_vrbl;
 initial
  
   for (int j=0; j<3; j++) begin
     automatic int k; 

     // using this automatic keyword in this lines gives us the o/p: 0 1 2 , wrtn outside the fork_join. In this there is no difrncs in o/p if we write k = j in the next line or drng declaration.

   //k = j;
 fork
  
   //automatic int k = j ; 
  
// using this automatic keyword in this lines gives us the o/p: 3 3 3, if we dclr k nd in nxt line we'll give k = j;but if the j is asgnd while dclrtn of k , k = j , thn o/p : 0 1 2 

   // k = j;
$write(k); 
join_none
//#0 $display;
end
endmodule

