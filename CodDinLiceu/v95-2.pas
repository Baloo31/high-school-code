{Andrei Balu - V95 - 2}
Program bac;
uses crt;
type vek=array[1..100] of real;
var V:vek;
    n:integer;
procedure inter(var a,b:real);
var aux: real;
begin
        aux:=a; a:=b; b:=aux;
end;
procedure circ(var V:vek; n:integer);
var i:integer;
begin
        for i:=1 to n-1 do inter(V[i],V[i+1]);
end;
procedure citire;
var i:integer;
begin
        Write('n='); readln(n);
        for i:=1 to n do
                begin
                        Write('V[',i,']='); Readln(V[i]);
                end;
end;
procedure afisare;
var i:integer;
begin
        for i:=1 to n do Write(V[i]:0:2,' ');
end;
begin
        Clrscr;
        citire; afisare; Writeln;
        circ(V,n); afisare;
        Readln;
end.
