{
Purpose: Get a Fibonacci number in a recursive way 
Linguagem: Pascal
Author: Jose Cintra (jose.cintra@html-apps.info)
}

var
index : integer;

function Fibo(index : integer) : integer;
begin
if index < 3 then
  Fibo := 1
else
  Fibo := Fibo(index - 1) + Fibo(index - 2);
end;

begin
writeln('The Fibonacci Numbers');
write('Enter the element''s position: ');
readln(index);
writeln('The element in this position is: ',Fibo(index));
end.
