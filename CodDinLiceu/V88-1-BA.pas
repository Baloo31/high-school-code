{V88-1-BA}
program bac;
uses crt;
type mat=array[1..30,1..30] of byte;
var n:byte;
    A:mat;
procedure afiseaza(A:mat; n:byte);
var i,j:integer;
begin
        for i:=1 to n do
                begin
                        for j:=1 to n do Write(A[i,j],' ');
                        Writeln;
                end;
end;
procedure creeaza(var A:mat; n:integer);
var i,j:integer;
begin
        for i:=1 to n do
                for j:=1 to n do
                        if i+j=n+1 then A[i,j]:=n+1
                        else A[i,j]:=i;
end;
begin
        clrscr;
        Write('n='); Readln(n);
        creeaza(A,n);
        afiseaza(A,n);
        readln;
end.
