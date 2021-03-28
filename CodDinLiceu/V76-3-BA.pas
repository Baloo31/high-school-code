program bac;
{V76 - 3 - Balu Andrei}
uses crt;
type mat=array[1..25,1..25] of byte;
var n:byte;
    A:mat;
procedure construieste(var A:mat; n:byte);
var i,j:byte;
begin
        for i:=1 to n do
                for j:=1 to n do
                        if i+j=n+1 then A[i,j]:=n
                                else A[i,j]:=(i+j-1) mod n;
end;
procedure afisare(A:mat; n:byte);
var i,j:byte;
begin
     for i:=1 to n do
                begin
                        for j:=1 to n do Write(A[i,j],' '); Writeln;
                end;
end;
begin
        clrscr; Write('n='); Readln(n); construieste(A,n); afisare(A,n); Readln;
end.