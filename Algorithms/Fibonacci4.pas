{ Math Algorithms

 Purpose:       Get a Fibonacci number in a recursive way 
 Language:      Pascal
 Author:        José Cintra
 Year:          2020
 Web Site:      https://github.com/JoseCintra/MathAlgorithms
 License:       Unlicense, described in http://unlicense.org
 Online demo:   https://onlinegdb.com/ry7W-vGUu
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

{Change this to test other input values}
index := 7;

writeln('The element in this position is: ',Fibo(index));
end.
