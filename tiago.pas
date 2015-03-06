Program Pzim ;
var a,b,c,d,sab,sac,sad,sbc,sbd,scd,mab,mac,mad,mbc,mbd,mcd:integer;
 Begin
   textbackground(white);
   textcolor(black);
   clrscr;
   gotoxy(3,5);
   write('Número 01: ');
   gotoxy(30,5);
   write('Número 02: ');
   gotoxy(3,7);
   write('Número 03: ');
   gotoxy(30,7);
   write('Número 04: ');
   gotoxy(15,5);  
   read(a);
   gotoxy(43,5);
   read(b);
   gotoxy(15,7);  
   read(c);
   gotoxy(43,7);
   read(d);
   sab := a + b;
   sac := a + c;
   sad := a + d;
   sbc := b + c;
   sbd := b + d;
   scd := c + d;
   
   mab := a * b;
   mac := a * c;
   mad := a * d;
   mbc := b * c;
   mbd := b * d;
   mcd := c * d;
   
   writeln('sab := a + b -> ', sab);
   writeln('sac := a + c -> ', sac);
   writeln('sad := a + d -> ', sad);
   writeln('sbc := b + c -> ', sbc);
   writeln('sbd := b + d -> ', sbd);
   writeln('scd := c + d -> ', scd);

   writeln('mab := a * b -> ', mab);  
   writeln('mac := a * c -> ', mac);
   writeln('mad := a * d -> ', mad);
   writeln('mbc := b * c -> ', mbc);
   writeln('mbd := b * d -> ', mbd);
   writeln('mcd := c * d -> ', mcd);
   
   
   
 End.
