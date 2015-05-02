Program Pzim ;
type
  disciplina = record
  	nome:string;
  	notas : array[1..4] of real;
  	media : real;
  end;

  aluno = record
  	nome: string;
  	endereco: string;
  	matricula: String;
  	curso:string;
  	disciplina: disciplina;
  end;
  
var
 alunos : array[1..5] of aluno; 
 i : integer;
 
procedure cadastrar(indice : integer);
var j : integer;
    somatorio : real;
 begin
 	write('Informe a matr�cula do aluno: ');
	read(alunos[indice].matricula);
	write('Informe o nome do aluno: ');
	read(alunos[indice].nome);
	write('Informe o endere�o do aluno: ');
	read(alunos[indice].endereco);
	write('Informe o curso do aluno: ');
	read(alunos[indice].curso);
	write('Informe a disciplina do aluno: ');
	read(alunos[indice].disciplina.nome);
	somatorio := 0;
	for j := 1 to 4 do
		begin
		  write('Informe a nota ', j ,' do aluno: ');
		  read(alunos[indice].disciplina.notas[j]);
		  somatorio := somatorio + alunos[indice].disciplina.notas[j];
		end;
	
	alunos[indice].disciplina.media := somatorio/4; 	  
end;

procedure apresentarAprovados;
var i : integer;
begin
    for i := 1 to 5 do
      begin
          if (alunos[i].disciplina.media < 7) then
             continue;
          writeln;
          writeln('Matr�cula: ',alunos[i].matricula);
          writeln('Nome: ',alunos[i].nome);
          writeln('Endere�o: ',alunos[i].endereco);
          writeln('Curso: ',alunos[i].curso);
          writeln('Disciplina: ',alunos[i].disciplina.nome);
          writeln('M�dia: ',alunos[i].disciplina.media:0:2);    
      end;
end;
  
 Begin
   for i := 1 to 5 do
   	cadastrar(i);
   	
   apresentarAprovados;
 End.
