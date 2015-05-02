Program Pzim ;
var continuar : char;


procedure apresentarResultado(descOperacao : String;
 resultado : real);
 begin
   writeln('O resultado da ', descOperacao, 
   ' �: ',resultado:0:2);
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
     write('Informe o primeiro n�mero: ');
     read(num1);
     write('Informe o segundo n�mero: ');
     read(num2);
     writeln;
     writeln('Opera��es dispon�veis:');
     writeln('  1. Adi��o');
     writeln('  2. Subtra��o');
     writeln('  3. Multiplica��o');
     writeln('  4. Divis�o');
     writeln;
     write('Selecione a opera��o: ');
     read(op);
     
     case (op) of 
       1: begin
	       resultado := adicao(num1,num2);
            apresentarResultado('adi��o',resultado);
		end; 
	  2: begin
	       resultado := subtracao(num1,num2);
            apresentarResultado('subtra��o',resultado);
		end;
	  3: begin
	       resultado := multiplicacao(num1,num2);
            apresentarResultado('multipli��o',resultado);
		end;
 	  4: begin
	       resultado := divisao(num1,num2);
            apresentarResultado('divis�o',resultado);
		end; 
       else writeln('Opera��o inv�lida');
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
