{Andrei Balu - v91 - 1}
program bac;
uses crt;
type vec=array[1..100] of byte;
var n:byte;
    V:vec;
procedure creeaza(var V:vec; n:byte);
var i:byte;
begin
        for i:=1 to n do  V[i]:=i mod 3;
end;
procedure afiseaza(V:vec; n:integer);
var i:byte;
    F:text;
begin
        assign(F,'vect.txt'); Rewrite(F);
        for i:=1 to n do Write(F,V[i],' ');
        close(F);
end;
begin
        Clrscr;
        Write('n='); Readln(n);
        creeaza(V,n);
        afiseaza(V,n);
end.