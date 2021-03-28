{V87-1-BA}
program bac;
uses crt;
var n:longint;
function schimb(var x:longint):longint;
var p:byte;
    n,a:longint;
begin
        if x<10 then n:=x
        else
                begin
                        p:=1; n:=x mod 10; x:=x div 10;
                        a:=x;
                        while a>9 do
                                begin
                                        a:=a div 10; p:=p*10;
                                end;
                        n:=(n*p + x mod p)*10 + a mod 10;
                end;
        schimb:=n;
end;
begin
        Clrscr;
        Write('n='); Readln(n); n:=schimb(n);
        Write(n,' ',sqrt(n):0:2);
        Readln;
end.
