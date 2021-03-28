program bac;
{V80 - 2 - Andrei Balu}
uses crt;
type apar=array[0..9] of byte;
var a,b:longint;
procedure initializare(var V:apar);
var i:byte;
begin
        for i:=0 to 9 do V[i]:=0;
end;
function distinct(x:longint):byte;
var V:apar;
    i,ok:byte;
begin
        initializare(V);
        while x<>0 do
                begin
                        V[x mod 10]:=V[x mod 10]+1; x:=x div 10;
                end;
        i:=0; ok:=1;
        while (i<=9) and (ok=1) do
                if V[i]>1 then ok:=0
                else i:=i+1;
        distinct:=ok;
end;
procedure parcurgere(a,b:longint);
var r,exista:byte;
    i:longint;
begin
        r:=0; exista:=0;
        for i:=a to b do
                begin
                        if r=10 then
                                begin
                                        Writeln; r:=0;
                                end;
                        if distinct(i)=1 then
                                begin
                                        Write(i,' '); r:=r+1; exista:=1;
                                end;
                end;
        if exista=0 then Write('Nu exista');
end;
begin
        clrscr;
        Write('a='); Readln(a);
        Write('b='); Readln(b);
        parcurgere(a,b);
        readln;
end.