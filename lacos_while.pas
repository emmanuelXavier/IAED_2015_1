Program Pzim ;
var cont, somatorio : integer;
 Begin
     cont := 1;
     somatorio := 0; 
 	while (cont <= 30) do
 		begin
 			if (cont mod 2 = 1) then
 				   somatorio := somatorio + cont * cont;
 		     cont := cont + 1;
 		end;
     write(somatorio);
 End.
