Program cap3;
var 
//----------------
x,y, DIF, D: integer;
VA, VB, VC, NL, BR, TE : integer;
VALOR, SUCESSOR, ANTECESSOR : integer;

//----------------
C, S, P, F, Distancia, Tempo, Velocidade, Litros_usados : real;
a, b, r, altura, volume, SM, PR, NS, w, n1, n2 :real;
PV, PA, PB, PC, PNL, PBR, US, COTACAO, i, n :real;
PRESTACAO, TAXA: real; 
R1, R2, R3, R4, pes, metros : real;
A1, A2, A3, A4, A5, A6 : real;
M1, M2, M3, M4, M5, M6 : real;
COMPRIMENTO, LARGURA, RAIO : real;

//----------------
 op: char;


//---------------------------------------------------------------------
  BEGIN   	   
  while(true) do
  begin
	WriteLn;
	    textcolor(white);
	    gotoxy(3,1);
         writeln(' ___');
	    gotoxy(3,2);
         writeln('',#186,'               ___');
         gotoxy(3,3);
         writeln('',#186,'     /\  ',#186,'_)    __',#186,'');
         gotoxy(3,4);
         writeln('',#186,'___ /""\ ',#186,'  ',#220,'  ___',#186,'');		 
		 	   
	   Begin       
          x := 10;{Coordenadas da opção inicial}
          y := 23;{Coordenadas da opção inicial}
              Begin
		    Repeat
              TextBackground(black);
              TextColor(White);
              
              WriteLn;
              Gotoxy(30,7);
	         WriteLn('Selecione uma das Letras:'); 
		    Gotoxy(20,10);
	         WriteLn('      ',#254,'LETRA A',#254,'');
              Gotoxy(20,11);
	         WriteLn('      ',#254,'LETRA B',#254,'');
              Gotoxy(20,12);
	         WriteLn('      ',#254,'LETRA C',#254,'');
              Gotoxy(20,13);
	         WriteLn('      ',#254,'LETRA D',#254,'');
              Gotoxy(20,14);
	         WriteLn('      ',#254,'LETRA E',#254,'');
              Gotoxy(20,15);
	         WriteLn('      ',#254,'LETRA F',#254,'');
              Gotoxy(20,16);
	         WriteLn('      ',#254,'LETRA G',#254,'');
              Gotoxy(20,17);
	         WriteLn('      ',#254,'LETRA H',#254,'');
     
	         Gotoxy(20,18);
	         WriteLn('      ',#254,'LETRA I',#254,'');
              Gotoxy(20,19);
	         WriteLn('      ',#254,'LETRA J',#254,'');
              Gotoxy(20,20);
	         WriteLn('      ',#254,'LETRA K',#254,'');
              Gotoxy(20,21);
	         WriteLn('      ',#254,'LETRA L',#254,'');
              Gotoxy(20,22);
	         WriteLn('      ',#254,'LETRA M',#254,'');
              Gotoxy(46,10);
	         WriteLn('   ',#254,'LETRA N',#254,'');
              Gotoxy(46,11);
	         WriteLn('   ',#254,'LETRA O',#254,'');
              Gotoxy(46,12);
	         WriteLn('   ',#254,'LETRA P',#254,'');
              Gotoxy(46,13);
	         WriteLn('   ',#254,'LETRA Q',#254,'');
              Gotoxy(46,14);
	         WriteLn('   ',#254,'LETRA R',#254,'');
              Gotoxy(46,15);
	         WriteLn('   ',#254,'LETRA S',#254,'');
              Gotoxy(46,16);
	         WriteLn('   ',#254,'LETRA T',#254,'');
              Gotoxy(46,17);
	         WriteLn('   ',#254,'LETRA U',#254,'');
              Gotoxy(46,18);
	         WriteLn('   ',#254,'LETRA V',#254,'');
              Gotoxy(46,19);
	         WriteLn('   ',#254,'LETRA W',#254,'');
              Gotoxy(46,20);
	         WriteLn('   ',#254,'LETRA X',#254,'');
		    Gotoxy(46,21);
		    writeln('   ',#254,'LETRA Y',#254,'');

		    Gotoxy(y,x);
              Textcolor(lightgreen);
              WriteLn(' ',#16,'');{Indica qual a opção selecionada}
              Textcolor(White);
              WriteLn;
	         
		    op := Readkey;
              
             If op = #75 then {Move para cima}
              y := y - 23;
             If op = #77 then {Move para baixo}
              y := y + 23;
             If y < 23 then {Ao chegar ao topo volta para a ultima opção}
                y := 46; {número da linha para as cordenadas}
             If y > 46 then {Ao chegar ao fundo volta para a primeira opção}
                y := 23; {número da linha para as cordenadas}	   
             If op = #72 then {Move para cima}
                x := x - 1;
             If op = #80 then {Move para baixo}
                x := x + 1;
		   If x < 10 then {Ao chegar ao topo volta para a ultima opção}
                x := 22; {número da linha para as cordenadas}
             If x > 22 then {Ao chegar ao fundo volta para a primeira opção}
                x := 10; {número da linha para as cordenadas}
         Until (op = #13);        
   ClrScr;
//----------------------------------------------------------------------------------   
          Case (x) of
       10: begin
          if (y = 23) then begin
          Repeat
          TextBackground(black);
          TextColor(White);
          ClrScr;
          writeln('escreva o valor em Fahr');
          writeln;
          readln (C);
          F := (9 * C + 160) / 5;
      	write (F);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          TextBackground(black);
          TextColor(White);
          ClrScr;
 	     writeln ('Digite o Valor de A:');
          readln (a);
          writeln ('Digite o Valor de B:');
          readln (b);
          writeln ('Digite o Valor de C:');
          readln (c);
          R := (a + b + c) * (a + b +c);
          writeln ('O Valor Encontrado é :(', R :2:2, ')');
          Until (op = #13);
	     end;
	     END;
//-------------------------------------------------------------------------------------------
      11: begin
          if (y = 23) then begin
          Repeat
          writeln ('Insira o valor em celso');
          readln (F);
          C :=(F - 32) * (5 / 9);
          write (C);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln ('Insira o valores de A, B, C, D');
	     readln (A, B, C, D);
	     P := A * C;
	     S := B + D;
	     writeln ('O produto dos valores de A e C é');
 	     writeln (P);
   		writeln ('O soma dos valores de B e D é');
          writeln (s);
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
      12: begin
          if (y = 23) then begin
          Repeat
          writeln('Insira o valor do Raio');
          readln (r);
          writeln('Insira o valor da altura');
          readln (altura);
          volume := 3.14 * r * r * altura;
          writeln ('O valor do volume é :', volume);		             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln ('qual o valor do salario mensal');
		readln (SM);
		writeln ('qual o valor do percentual de reajuste');
          readln (PR);
		NS := SM + SM * PR / 100;
          writeln ('Novo salario é:');
		write (NS);
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
        13: begin
          if (y = 23) then begin
          Repeat
          writeln ('Insira o Tempo');
          readln (Tempo);
          writeln ('Insira a Velocidade');
          readln (Velocidade);
          Distancia := Tempo * Velocidade;
          Litros_usados := Distancia / 12;
          write (Velocidade, Tempo, Distancia, Litros_usados);		             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;  	      
 	     writeln ('Qual o valor do raio da circunferência R');
          readln (R);
          A := 3.14159 * R* R;
          writeln ('O valor da area da circunferência é');
          write (A);
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
      14 : begin
          if (y = 23) then begin
          Repeat
          writeln ('Para apresentar o valor de uma prestação de um bem em atraso,');
          writeln ('Insira o valor');
          readln (VALOR);
          writeln ('a taxa');
          readln (TAXA);
          writeln ('o tempo');
          readln (TEMPO);
          PRESTACAO := VALOR + (VALOR * (TAXA / 100) * TEMPO);
          writeln ('O valor da prestação é');
          write (PRESTACAO);
		             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln ('Insira os votos dos candidatos');
   		writeln ('Candidato A');
   		readln (VA);
  		writeln ('Candidato B');
  		readln (VB);
   		writeln ('Candidato C');
   		readln (VC);
   		writeln ('Votos nulos');
   		readln (NL);
   		writeln ('Brancos');
   		readln (BR);
   		TE := VA + VB + VC + NL + BR;
   		PV := (VA + VB + VC) * 100 / TE;
   		PA := VA * 100 / TE;
   		PB := VB * 100 / TE;
   		PC := VC * 100 / TE;
   		PNL := NL * 100 / TE;
   		PBR := BR * 100 / TE;
   		writeln ('O total de eleitores é');
   		writeln (TE);
   		writeln ('O percentual correspondente de votos válidos em relação à quantidade de eleitores é');
   		writeln (PV);
   		writeln ('O percentual correspondente de votos válidos do candidato A em relação à quantidade de eleitores');
   		writeln (PA);
   		writeln ('O percentual correspondente de votos válidos do candidato B em relação à quantidade de eleitores');
   		writeln (PB);
   		writeln ('O percentual correspondente de votos válidos do candidato C em relação à quantidade de eleitores');
   		writeln (PC);
   		writeln ('O percentual correspondente de votos nulos em relação à quantidade de eleitores');
   		writeln (PNL);
   		writeln ('O percentual correspondente de votos em branco em relação à quantidade de eleitores');
   		writeln (PBR); 
 	      
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
         15: begin
          if (y = 23) then begin
          Repeat
          writeln (' Diga os valores de A e B para efetuar a troca dos valores');
   		readln (A, B);
   		w := a;
   		a := b;
   		b := w;
   		writeln ('os valores após a efetivação do processamento da troca A com B são:');
   		write (A, B);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln('Diga os valores de A e B, para apresentar os resultados');
   		writeln('das quatro operações aritméticas básicas.');
   		readln (A, B);
   		R1 := A + B;
   		R2 := A - B;
   		R3 := A * B;
   		R4 := A / B;
   		writeln('A + B');
   		writeln (R1); 
   		writeln('A - B');
   		writeln (R2);
   		writeln('A * B');
   		writeln (R3);
   		writeln('A / B');
   		writeln (R4); 
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
      16: begin
          if (y = 23) then begin
          Repeat
          writeln ('Ensica o valor de A, B, C, D');
   		readln (A, B, C, D);
   		A1 := A + B;
   		A2 := A + C;
   		A3 := A + D;
   		A4 := B + C;
   		A5 := B + D;
   		A6 := C + D;
   		M1 := A * B;
   		M2 := A * C;
   		M3 := A * D;
   		M4 := B * C;
   		M5 := B * D;
   		M6 := C * D;
   		writeln ('A + B');
  		writeln (A1);
  		writeln ('A + C');
   		writeln (A2);
   		writeln ('A + D');
   		writeln (A3);
   		writeln ('B + C');
   		writeln (A4);
   		writeln ('B + D');
   		writeln (A5);
   		writeln ('C + D');
   		writeln (A6);
   		writeln ('A * B');
   		writeln (M1);
   		writeln ('A * C');
   		writeln (M2);
   		writeln ('A * D');
   		writeln (M3);
   		writeln ('B * C');
   		writeln (M4);
   		writeln ('B * D');
   		writeln (M5);
   		writeln ('C * D');
   		writeln (M6);		             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;  	      
 	     writeln('Para calcular a velocidade media');
  		writeln('Insira o valor da distancia ');
   		readln (DISTANCIA);
   		writeln('Insira o valor do tempo');
   		readln (TEMPO);
   		VELOCIDADE := (DISTANCIA * 1000) / (TEMPO * 60);
   		writeln('A velocidade media é:');
   		write (VELOCIDADE);
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
      17: begin
          if (y = 23) then begin
          Repeat
          writeln('Para calcular o Volume insira os valores abaixo:');
		writeln('Insira o Comprimento');
		readln (COMPRIMENTO);
		writeln('Insira Largura');
		readln (LARGURA);
		writeln('Insira Altura');
		readln (ALTURA);
		VOLUME := COMPRIMENTO * LARGURA * ALTURA;
		writeln('');
		write (VOLUME);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln('Insira o volor do Raio');
   		readln (RAIO);
		VOLUME := (4 / 3) * 3.14159 * (RAIO * RAIO * RAIO);
   		writeln('O volume é');
   		write (VOLUME);
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
      18: begin
          if (y = 23) then begin
          Repeat
          writeln('Insira o valor a ser elevado ao quadrado');
   		readln (Y);
  		 X := Y * Y;
   		writeln('O quadrado do numero é:');
  		 write (X);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln ('Digite o Valor de A:');
   		readln (a);
   		writeln ('Digite o Valor de B:');
   		readln (B);
   		n1 := (a * a);
   		n2 := (b * b);
   		writeln ('O valor de N1 é: (', N1 :2:2,')');
   		writeln ('O valor de N2 é: (', N2 :2:2,')');
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
	 19: begin
          if (y = 23) then begin
          Repeat
          writeln('insira o valor de A e B');
    		readln(A,B);
    		R:= (A - B) * (2*2);
    		writeln('O resultado é:');
    		write (R);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln('Converdo de pes para metros:');
   		writeln('Insira o valor em ser a ser convertido');
   		readln (pes);
   		metros := pes * 0.3048;
   		writeln('O valor em metros é:');
   		write (metros); 
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
      20: begin
          if (y = 23) then begin
          Repeat
          writeln('Insira o US e a COTACAO');
   		readln (US, COTACAO);
   		R := US * COTACAO;
   		writeln('O resultado é:');
   		write (R);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln ('Digite o Valor de R:');
   		readln (r);
   		writeln ('Digite o Valor de N:');
   		readln (n);
   		I := n / r;
   		writeln ('O Valor Encontrado foi : (', i :2:2, ')'); 
          Until (op = #13);
	     end;
	     end;
//-------------------------------------------------------------------------------------------
          21: begin
          if (y = 23) then begin
          Repeat
          writeln('Insira o valores em Real e a cotacão: ');
   		readln (R, COTACAO);
   		US := R / COTACAO;
   		writeln('O valor em US:');
   		write (US);             
          Until (op = #13); 
          end else begin
          //-----------
          Repeat
          ClrScr;
 	     writeln ('escreva o valor');
   		readln (VALOR);
   		SUCESSOR := VALOR + 1;
   		ANTECESSOR := VALOR - 1;
   		writeln ('o valor do sucessor é:');
   		writeln (SUCESSOR);
   		writeln ('o valor do antecessor é:');
   		writeln (ANTECESSOR); 
          Until (op = #13);
	     end;
	     end;
//--------------------------------------------------------------------------------------------




    end;
 end;
 end;
 readkey;
 clrscr;
  end;
 End.
 
