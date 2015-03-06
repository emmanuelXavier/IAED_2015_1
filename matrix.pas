Program Matrix;
Uses JpPereira;

var
coluna, linha, limite, cont, aux : integer;
letra: integer;

begin
  clrscr;
   repeat
    coluna :=1 + Random (80);
    linha :=1 + Random (1);
    limite :=random(44) ;
       for cont:= linha to linha+limite do
        begin
          if cont<400 then
             begin
                letra:=random(2);
                  for aux := 1 to 2 do
                   begin
				 if aux = 1 then
                      textcolor(2)
                     else
                      textcolor (2);
                      gotoxy (coluna,cont);
                      write (letra);
                      delay (0);
                   end;
             end;
       end;
    until keypressed;
end.
