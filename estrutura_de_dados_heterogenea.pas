Program Pzim ;
type
   produtos = record
       codbarra : String;
       nome : String;
       estoque : integer;
       valor : real;
   end;
   
var
   p : produtos;
 Begin
    read(p.codbarra);
    read(p.nome);
    read(p.estoque);
    read(p.valor);
    
    writeln(p.codbarra);
    writeln(p.nome);
    writeln(p.estoque);
    writeln(p.valor); 
 End.
