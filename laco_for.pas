Program Pzim ;
var cont, somatorio,q : integer;
 Begin
 	read(q);
     somatorio := 0; 
 	for cont := 1 to q do
 		begin
 			if (cont mod 2 = 1) then
 				   somatorio := somatorio + cont * cont;
 		end;
     write(somatorio);
 End.
