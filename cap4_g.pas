Program Pzim ;
var a,b,c,d : integer;
    r2,r3 : integer;
 Begin
 	read(a,b,c,d);
 	r2 := a mod 2;
  	r3 := a mod 3;
 	if (r2 = 0) and (r3 = 0) then
 	  writeln(a);
 	r2 := b mod 2;
  	r3 := b mod 3;
 	if (r2 = 0) and (r3 = 0) then
 	  writeln(b);
 	r2 := c mod 2;
  	r3 := c mod 3;
 	if (r2 = 0) and (r3 = 0) then
 	  writeln(c); 
 	r2 := d mod 2;
  	r3 := d mod 3;
 	if (r2 = 0) and (r3 = 0) then
 	  writeln(d); 
 End.
