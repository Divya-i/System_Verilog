// Code your design here
module argmnt_pssng;
  
  int x,y,z;
  int a,b,w;
  int c,d,t;
  int h,i,q;
  
  function int sum(int x,y);
    x = x + y;
    return x + y;
  endfunction
  
  function int sum1(ref int a,b);
    a = a + b;
    return a + b;
  endfunction
  
 /* function int sum2(const ref int c,d);
    c =  c + d;
    return c + d;   
  endfunction*/
  
  function int sum3(int e=5,f=10,g=20);
    return e + f + g;   
  endfunction
  
  function void display(int h,string i);
    $display("value of h = %0d, i = %0s",h,i);   
  endfunction
    
  
  initial begin
    x = 30;
    y = 30;
    z = sum(x,y);
    $display("\n--------pass_by_value........");
    $display("  value of x = %0d",x);
    $display("  value of y = %0d",y);
    $display("  value of z = %0d",z);
    
    a = 30;
    b = 60;
    w = sum1(x,y);
    $display("\n--------pass_by_ref........");
    $display("  value of a = %0d",a);
    $display("  value of b = %0d",b);
    $display("  value of w = %0d",w);
    
    /*c = 20;
    d = 10;
    t = sum2(c,d);
    $display("\n--------pass_by_ref_wth_cnst........");
    $display("  value of c = %0d",c);
    $display("  value of d = %0d",d);
    $display("  value of t = %0d",t);*/
    
    // dclrng the vrbl as constant , we can't further change the values of that prtclr vrbl nd throws an error.
    
    q = sum3( , ,10);
    $display("\n--------argmnts_wth_dflt_values........");
    $display(" value of q = %0d",q);
    
    $display("\n--------pass_by_name........");
    display(.i("Hello World"),.h(2016));

    
    
  end
endmodule