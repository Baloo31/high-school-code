{V87-3-BA}
program bac;
uses crt;
var k:byte;
    F:text;
function contine(x:longint; k:byte):boolean;
var v:boolean;
begin
        v:=false;
        while (x>0) and not v do
                if x mod 10 = k then v:=true
                else x:=x div 10;
        contine:=v;
end;
function prim(x:longint):boolean;
var p:boolean;
    t:longint;
begin
        p:=true; t:=2;
        while (t<=x div 2) and p do
                if x mod t = 0 then p:=false
                else t:=t+1;
        prim:=p;
end;
function numarare(var F:text; k:byte):integer;
var x:longint;
    a:integer;
begin
        a:=0;
        while not eof(F) do
                begin
                        Read(F,x);
                        if contine(x,k) and prim(x) then a:=a+1;
                end;
        numarare:=a;
end;
begin
        clrscr;
        Write('k='); Readln(k);
        assign(F,'date.in'); Reset(F);
        Write(numarare(F,k));
        close(F);
        readln;
end.
