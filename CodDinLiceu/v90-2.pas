{Andrei Balu - v90 - 2}
program bac;
uses crt;
type vek=array[1..100] of longint;
var V:vek;
    n,a,b:longint;
function sub(n:longint; V:vek; k:longint):integer;
var i,z:longint;
begin
        z:=0;
        for i:=1 to n do
                if V[i]<=k then z:=z+1;
        sub:=z;
end;
procedure citeste(n:longint; var V:vek);
var i:longint;
begin
        for i:=1 to n do
                begin
                        Write('V[',i,']='); Readln(V[i]);
                end;
end;
begin
        clrscr;
        Write('n='); Readln(n); citeste(n,V);
        Write('a='); Readln(a);
        Write('b='); Readln(b);
        Write(sub(n,V,b)-sub(n,V,a));
        readln;
end.