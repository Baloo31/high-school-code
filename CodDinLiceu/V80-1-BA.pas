program bac;
{V80 - 1 - Andrei Balu}
uses crt;
type mat=array[1..20,1..20] of integer;
var A:mat;
    n:byte;
procedure construieste(var A:mat; n:byte);
var i,j:byte;
begin
        for i:=1 to n do
                for j:=1 to n do
                        A[i,j]:= i + 3*(j-1);
end;
procedure afiseaza(A:mat; n:byte);
var i,j:byte;
begin
        for i:=1 to n do
                begin
                        for j:=1 to n do Write(A[i,j],' ');
                        Writeln;
                end;
end;
begin
        Clrscr;
        Write('n='); Readln(n);
        construieste(A,n);
        afiseaza(A,n);
        Readln;
end.