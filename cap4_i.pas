Program Pzim ;
var a,b,c,d,e : integer;
    maior,menor : integer;
 Begin
    read(a,b,c,d,e);
    maior := a;
    menor := a;
    
    if (b < menor)then
      menor := b
    else
        if (b > maior) then
        maior := b;
	
	if (c < menor)then
      menor := c
    else
        if (c > maior) then
        maior := c;
        
    if (d < menor)then
      menor := d
    else
        if (d > maior) then
        maior := d;
        
    if (e < menor)then
      menor := e
    else
        if (e > maior) then
        maior := e;
        
	writeln('Menor: ',menor, ' Maior: ',maior);
    
 End.
