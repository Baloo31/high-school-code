{Andrei Balu - V92 - 2}
program bac;
uses crt;
type vec=array[0..199] of real;
var V:vec;
    n:integer;
function test(i1,i2:integer):byte;
var p:integer;
    t:byte;
begin
        t:=1; p:=i1;
        while (p<=i2-1) and (t=1) do
                if V[p]>=V[p+1] then t:=0
                else p:=p+1;
        test:=t;
end;
procedure citire(var V:vec; var n:integer);
var F:text;
begin
        assign(F,'DATE.TXT'); Reset(F); n:=0;
        while not eof(F) do
                begin
                        n:=n+1; Read(F,V[n-1]);
                end;
        close(F);
end;
function verifica(v:vec; n:integer):boolean;
var verif:boolean;
    i:integer;
begin
        verif:=false; i:=0;
        while (i<=n-1) and not verif do
                if test(0,i-1) * test(i+1,n-1) = 1 then verif:=true
                else i:=i+1;
        verifica:=verif;
end;
begin
        clrscr;
        citire(V,n);
        Write(verifica(V,n));
        readln;
end.