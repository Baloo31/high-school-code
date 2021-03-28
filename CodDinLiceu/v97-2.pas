{Andrei Balu - V97 - 2}
Program bac;
uses crt;
var n,k:byte;
function produs(x:byte):longint;
var p:longint;
    i:byte;
begin
        p:=1;
        for i:=2 to x do p:=p*i;
        produs:=p;
end;
begin
        Clrscr;
        Write('n='); Readln(n);
        Write('k='); Readln(k);
        if k>n then Write(0)
        else Write( produs(n) div ( produs(k) * produs(n-k) ) );
        Readln;
end.
