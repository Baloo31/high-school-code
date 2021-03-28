{V85-03-BA}
program eins;
uses crt;
procedure creeaza;
var F:text;
    n:integer;
begin
        Write('n='); Readln(n);
        assign(F,'bac.txt'); Rewrite(F);
        if n mod 2<>0 then n:=n-1;
        while n>=0 do
                begin
                        Write(F,n,' '); n:=n-2;
                end;
        close(F);
end;
begin
        clrscr;
        creeaza;
end.