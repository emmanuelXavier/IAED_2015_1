Program Pzim ;
var
	notas : array[1..10,1..4] of real;
	indice,alunos : integer;
	media:real;
 Begin
    media := 0;
    
    for alunos := 1 to 10 do
    	begin
       for indice := 1 to 4 do
    	    begin
    	    	write('Informe a nota ', indice, ' do aluno ',alunos,': ');
    		read(notas[alunos][indice]);
    		media := media + notas[alunos][indice];
    	  end;
	  writeln('A média é: ', media/4);
	end;
 End.
