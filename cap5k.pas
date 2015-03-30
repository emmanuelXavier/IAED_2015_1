Program Pzim ;
var graos, quadro, cont : integer;

 Begin
 
 	cont := 1;
 	quadro := 1;
 	graos := 0;
 	
 	while (cont <= 31) do
 		begin
 		  graos := graos + quadro;
 		  quadro := quadro * 2;
 		  cont := cont + 1;
 		end;
 		
 	write(graos);
  
 End.
