Program Pzim ;
var idade : integer;
 Begin
 
 	write('INforme a sua idade');
 	read(idade);
 	if (idade >= 18) then
 		begin
 			writeln('Idade aceita');
 	   		writeln('Acessando o sistema');
 	   	end	
     else
     	begin
     		textcolor(red);
			writeln('Idade não aceita'); 
		end;	
 End.
