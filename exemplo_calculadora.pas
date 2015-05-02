Program Pzim ;
var continuar : char;


procedure apresentarResultado(descOperacao : String;
 resultado : real);
 begin
   writeln('O resultado da ', descOperacao, 
   ' é: ',resultado:0:2);
 end;
 
function adicao(n1,n2 : real): real;
 begin
    adicao := n1 + n2;
 end;
 
function subtracao(n1,n2 : real):real;
 begin
 	subtracao:= n1 - n2;
 end;
 
function multiplicacao(n1,n2 : real):real;
 begin
 	multiplicacao := n1 * n2;
 end;
 
function divisao(n1,n2 : real): real;
 begin
 	divisao := n1 / n2;	
 end;
 
 
procedure menu;         
var
  op: integer;
  num1,num2,resultado : real;
 begin
     writeln ('CALCULADORA DO SAMUCA');
     write('Informe o primeiro número: ');
     read(num1);
     write('Informe o segundo número: ');
     read(num2);
     writeln;
     writeln('Operações disponíveis:');
     writeln('  1. Adição');
     writeln('  2. Subtração');
     writeln('  3. Multiplicação');
     writeln('  4. Divisão');
     writeln;
     write('Selecione a operação: ');
     read(op);
     
     case (op) of 
       1: begin
	       resultado := adicao(num1,num2);
            apresentarResultado('adição',resultado);
		end; 
	  2: begin
	       resultado := subtracao(num1,num2);
            apresentarResultado('subtração',resultado);
		end;
	  3: begin
	       resultado := multiplicacao(num1,num2);
            apresentarResultado('multiplição',resultado);
		end;
 	  4: begin
	       resultado := divisao(num1,num2);
            apresentarResultado('divisão',resultado);
		end; 
       else writeln('Operação inválida');
     end;	
 end;

 Begin
 	repeat
	  menu;
	  delay(2500);
	  clrscr;
	  write('Deseja contiuar (s/n): ');
	  read(continuar);
	  clrscr;
	until(continuar = 'n');  
 End.
