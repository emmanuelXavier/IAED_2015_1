Program Pzim ;
type
   produtos = record
       codbarra : String;
       nome : String;
       estoque : integer;
       valor : real; 
   end;
var
   p : array[1..1500] of produtos;
   i : integer;
 Begin
   for i := 1 to 3 do
    begin
    	read(p[i].codbarra);
    	read(p[i].nome);
    	read(p[i].estoque);
    	read(p[i].valor);
    end;
   for i := 1 to 3 do
    begin
     writeln(p[i].codbarra);
     writeln(p[i].nome);
     writeln(p[i].estoque);
     writeln(p[i].valor); 
    end;
 End.
