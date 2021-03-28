{V87-2-BA}
program bac;
uses crt;
type vek = array [1..50] of real;
var V:vek;
    p:byte;
function f(V:vek; n:byte):byte;
var i,cresc,descresc:byte;
begin
        cresc:=1; descresc:=1;
        for i:=1 to n-1 do
                if (V[i]>V[i+1]) and (cresc=1) then cresc:=0
                else if (V[i]<V[i+1]) and (descresc=1) then descresc:=0;
        if (cresc+descresc=0) or (n=1) then f:=0
        else if cresc=1 then f:=1
             else f:=2;
end;
procedure citire(var V:vek; n:byte);
var i:byte;
begin
        for i:=1 to n do
                begin
                        Write('V[',i,']='); Readln(V[i]);
                end;
end;
function secventa(V:vek; n:byte):byte;
var i:integer;
begin
        i:=n;
        while f(V,i)=0 do i:=i-1;
        secventa:=i;
end;
begin
        clrscr;
        Write('P='); Readln(p); citire(V,p);
        Write(secventa(V,p));
        readln;
end.
