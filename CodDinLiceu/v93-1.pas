{Andrei Balu - V93 - 1}
Program bac;
uses crt;
var n:longint;
procedure afisare(n:longint);
var F:text;
    p:longint;
begin
        assign(F,'NR.TXT'); Rewrite(F); p:=10;
        while p<=n do p:=p*10;
        while p<>10 do
                begin
                         p:=p div 10;
                         if n mod p <> n mod (p div 10) then Writeln(F,n mod p,' ');
                end;
        while n>10 do
                begin
                        n:=n div 10; Writeln(F,n,' ');
                end;
        close(F);
end;
begin
        clrscr;
        Write('n='); Readln(n);
        afisare(n);
end.