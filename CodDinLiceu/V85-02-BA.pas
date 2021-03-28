{V85-02-BA}
program bac;
uses crt;
type vek=array[1..50] of integer;
var A:vek;
    n:byte;
procedure GenereazaVector(var n:byte; var V:vek);
var i:byte;
begin
        Write('n='); Readln(n);
        for i:=1 to n do
                begin
                        Write('A[',i,']='); Readln(V[i]);
                end;
end;
procedure AfiseazaVector(n:byte; V:vek);
var i:byte;
begin
        for i:=1 to n do Write(V[i],' ');
        Writeln;
end;
function f(V:vek; n:byte; x:integer):byte;
var i,nr:byte;
begin
        nr:=0;
        for i:=1 to n do
                if V[i]<x then nr:=nr+1;
        f:=nr;
end;
function numar(n:byte; V:vek):byte;
begin
        numar:=n-(f(V,n,1)-f(V,n,0));
end;
begin
        clrscr;
        GenereazaVector(n,A);
        AfiseazaVector(n,A);
        writeln(Numar(n,A));
        readln;
end.