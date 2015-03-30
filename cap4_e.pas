Program Pzim ;
var a,b,c,d,x1,x2: real;
 Begin
 	read(a,b,c);
 	if (a = 0) or (b = 0) or (c = 0) then
 		writeln('Equação incompleta')
 	else
 		begin
 			d := b * b - 4 * a * c; 
 			if (d < 0) then
 			  writeln('Não há solução real.')
 			else
			 	begin
					if (d = 0) then
						begin
					  		x1 := -b/(2 * a);
					  		writeln('Apenas uma solução real -> ',x1:0:2);
					  	end
					else 
						begin
						    x1 := -b + exp(ln(d) * 1/2)/ (2 *a);
						    x2 := -b - exp(ln(d) * 1/2)/ (2 *a);        
						    writeln('Existem duas soluções reais -> x1: ',x1:0:2,'  x2: ',x2:0:2);
						end;
						
				end;   
 		
 		end;
  
 End.
