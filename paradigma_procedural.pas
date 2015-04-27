Program Pzim ;
var
 nome : String;
 resultado,n1,n2 : integer;
 
procedure mensagem; 
 begin
     writeln(nome);
 end;
 
function somar: integer;
var a,b:integer;
begin
   read(a,b);
   somar := a + b;
end;

function somar1(a, b: integer): integer;
begin
   somar1 := a + b;
end;

procedure somar2;
var a,b,somar:integer;
begin
   read(a,b);
   somar := a + b; 
   write('O resultado È: ',somar);  
end;

procedure somar3;
var a,b,somar:integer;
begin
   read(a,b);
   somar := a + b; 
   write(somar);  
end;


procedure leitura;
var
 nome : String;
 begin
     writeln('Informe o nome');
     //read(nome);
     nome := '10';
     mensagem;
 end;

 Begin	
//	leitura;
	read(n1,n2);
	
	resultado := somar1(n1,n2);
	write('SOMATÛRIO: ',resultado);
	//somar2;

 End.
