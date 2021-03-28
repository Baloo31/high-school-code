program bac03;
uses crt;
var a,b:integer;
    x:real;
    F,G:text;
function interval(x:real; a,b:integer):byte;
var aux:integer;
begin
        if a>b then
                begin
                        aux:=a; a:=b; b:=aux;
                end;
        if (x>=a) and (x<=b) then interval:=1
        else interval:=0;
end;
begin
        Clrscr;
        Write('a='); Readln(a); Write('b='); Readln(b);
        assign(F,'numere.in'); Reset(F);
        assign(G,'numere.out'); Rewrite(G);
        while not eof(F) do
                begin
                        Read(F,x);
                        if interval(x,a,b)=1 then Write(G,x:4:2,' ');
                end;
        close(F);
        close(G);
        Clrscr;
end.
