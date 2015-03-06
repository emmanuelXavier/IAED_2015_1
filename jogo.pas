Program Pzim ;
const
limci=2;
limba=22;
limes=2;
limdi=55;

var md,mb:boolean;
x,y,t,pts:integer;

procedure tela;
begin
writeln(#201,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#187);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#186,'                                                      ',#186);
writeln(#200,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#188);
gotoxy(58,20);writeln('Desenvolvido por ');
gotoxy(58,21);writeln('     ITALO');
gotoxy(58,10);writeln('Aperte W ou S ');        
gotoxy(58,11);writeln('  para mover');
end;

//faz a bola se mover 

procedure mover;
begin
if md then x:=x+1 else x:=x-1;
if mb then y:=y+1 else y:=y-1;
if (y=limba) or (y=limci) then mb:=not mb;
if x=limes then md:=not md;
gotoxy(x,y);
write(#1);
end;

// Apaga a posição anterior da raquete

procedure limpa;
var y:integer;
begin
for y :=2 to 22 do
begin
gotoxy(55,y);
writeln(' ');
end;
end;

//apaga a posição anterior da bola


procedure lrastro;
var x1,y1:integer;
begin
if x<> limes then if md then x1:=x-1 else x1:=x+1;
if y<> limci then if y<>limba then if mb then y1:=y-1 else y1:=y+1;
textcolor(blue);
if y=limci then if not md then begin gotoxy(x+1,y+1); writeln(#186);end; 
if y=limba then if not md then begin gotoxy(x+1,y-1); writeln(#186);end; 
if y=limba then if md then begin gotoxy(x-1,y-1); writeln(#186);end;
if y=limci then if md then begin gotoxy(x-1,y+1); writeln(#186);end;
if x=limes then if not mb then begin gotoxy(x+1,y+1);writeln(#186); 
textcolor(lightcyan);gotoxy(x-1,y+1);writeln(#186);
end; 

if x=limes then if mb then begin gotoxy(x+1,y-1);writeln(#186);
textcolor(lightcyan); gotoxy(x-1,y-1);writeln(#186);
end;
gotoxy(x1,y1);
write(#186);
textcolor(lightCyan);
gotoxy(1,4);
write(#186);
gotoxy(1,22);
write(#186);
end;

// Procedure que desenha e movimenta a raquete

 procedure raquete;
 begin
 while keypressed do
   begin
   case upcase(readkey) of
   'W':if t>limci then begin t:=t-2;limpa;end;
   'S':if t<limba-2 then begin t:=t+2;limpa;end;
   'P':exit;
    end;
  gotoxy(55,t);
  write(#219);
  gotoxy(55,t+1);
  write(#219);
  gotoxy(55,t+2);
  write(#219);
 end;  
 end;
 
// faz a bola voltar quando bater na raquete  
 
 procedure bater;
begin
	if x=limdi then if y=t then 
	begin
		 pts:=pts+1;
		gotoxy(limes-1,23);write('pontos : ',pts) ; md:=not md ;
		end;
	if x=limdi then if y=t+1 then begin pts:=pts+1;
		gotoxy(limes-1,23);write('pontos : ',pts) ; md:=not md ;end;
	if x=limdi then if y=t+2 then 
	begin 
		pts:=pts+1;
		gotoxy(limes-1,23);write('pontos : ',pts) ; md:=not md ;
		end;
end;

// define onde a bola vai começar


 procedure define;
 var l:integer;
 begin
  x:=8; 
  t:=12; 
  randomize ;
 y:=random(19)+3;
 l:=random(4);
 case l of
 	0:begin
  		md:=true;mb:=true;
	end;
 	1:begin 
 		md:=true;mb:=false;
	end;
 	2:begin 
	 	md:=false;mb:=true;
	 end;
 	3:begin 
	 	md:=false;mb:=false;
	 end;
 end;
 end;     
 
 // Procedure que define a seguencia das outras procedures

procedure rodajogo;
begin
 define;
 while x<56 do
 begin
 	raquete;
 	bater;
 	mover;
 	lrastro;
 	if pts<=3 then delay(80);
 	if pts<=5 then if pts>3 then delay(60);
 	if pts<=11 then if pts>5 then delay(50);
 	if pts>11 then delay(40); 
 	gotoxy(58,5);
 	if x=56 then writeln('Aperte E para sair');
 	gotoxy(58,6);
 	if x=56 then writeln('ou R para reiniciar');
 end;
 end;
 
 // Programa Principal
 
 Begin
 	textbackground(blue);
 	clrscr;
 	textcolor(lightcyan);
 	gotoxy(22,12);
 	writeln('Aperte qualquer tecla para começar');
 	readkey;
 	clrscr;
 	tela;
 	t:=12;
 	  	gotoxy(55,t);
 		write(#219);
 	 	gotoxy(55,t+1);
  		write(#219);
  		gotoxy(55,t+2);
  		write(#219);
 	rodajogo;
 	
 	while 0=0 do
 	begin 
 		case readkey of 
 		'e':exit;
 		'r':begin clrscr;pts:=0;tela;rodajogo;end
 	else continue; 
 end;
 end;
 End.
