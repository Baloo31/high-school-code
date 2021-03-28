{V86-3-BA}
program bac;
uses crt;
var F,G:text;
function prima(x:longint):byte;
begin
        while x>9 do x:=x div 10;
        prima:=x;
end;
procedure scriere;
var x:longint;
begin
        while not eof(F) do
                begin
                        read(F,x);
                        if prima(x) mod 2 =0 then Write(G,x,' ');
                end;
end;
begin
        clrscr;
        Assign(F,'date.in'); Reset(F);
        Assign(G,'date.out'); Rewrite(G);
        scriere; close(F); close(G);
        readln;
end.