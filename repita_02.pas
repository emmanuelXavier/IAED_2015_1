Program Pzim ;
var idade : integer;
    continuar : String;
 Begin
 
 	repeat
 		clrscr;
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
		write('Deseja continuar: ');
		read(continuar);
	until(continuar <> 's');	
 End.
