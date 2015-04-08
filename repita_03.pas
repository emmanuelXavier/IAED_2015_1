Program Pzim ;
var num,somatorio : integer;
 Begin
  num := 1;
  somatorio := 0;
  repeat 
  	writeln(num);
  	somatorio := somatorio + num;
  	num := num + 1;
  until (num > 100);	
  	
  writeln('O somatório é: ', somatorio);
  
 End.
