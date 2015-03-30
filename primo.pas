Program Pzim ;
var cont, numero:integer;
	isPrimo : boolean;
 Begin
 
 	cont := 2;
 	while (cont <= 100) do
 	 begin
 	     numero := cont - 1;
 	     while (numero > 1) do
 	     	begin
 	     		isPrimo := true;
 	       		if (cont mod numero = 0)then
 	         			begin
 	         				isPrimo := false;
						break;
					end;	
 	         		numero := numero -1;
 	         	end;
 	     if (isPrimo) then
 	     	writeln(cont);
 	     cont := cont + 1;    	
 	 end;
  
 End.
