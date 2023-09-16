/*module tb;

integer i;

  initial
begin
//for(i=0; i<5; i++) begin
fork
  for(i=0; i<5; i++) begin
#5;
$display("%0t , i=%0d", $time, i);
  end
join_none
//end
end
endmodule*/


/*module tb;

integer i;
initial
begin
for(i=0; i<5; i++) begin
#0;
fork
$display("%0t , i=%0d", $time, i);
join_none
end
end

endmodule*/


/*module tb;

initial
for( int i = 0; i < 3; i++ )
begin
fork
//begin
automatic int j = i;
$display( "i : %0d", j );
//end
join_none
end
endmodule*/