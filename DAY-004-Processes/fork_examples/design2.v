// Code your testbench here
// or browse Examples
// some examples of fork_joins

/*module tb;
initial
for( int i = 0; i < 5; i++ )

begin
int j;
j= i;
fork
begin
$display( "j : %0d", j );
end
join_none
end
endmodule*/

/*module tb;

initial
for( int i = 0; i < 5; i++ )
begin
fork
automatic int j = i;
$display( "j : %0d", j );
join_none
end
endmodule*/

module tb;

initial
for( int i = 0; i < 5; i++ )
begin
fork
begin
automatic int j = i;
$display( "j : %0d", j );
end
join_none
end
endmodule