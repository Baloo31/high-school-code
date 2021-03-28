program bac;
{V76 - 3 - Balu Andrei}
uses crt;
type vek=array[0..10000] of integer;
var V:vek;
    a:integer;
procedure initializare(var V:vek);
var i:integer;
begin
        for i:=0 to 10000 do V[i]:=0;
end;
procedure afisare(V:vek; a:integer);
var i:integer;
begin
        for i:=0 to 10000 do
                if V[i]=a then Write(i,' ');
end;
procedure fisier(var V:vek; var a:integer);
var x,y:integer;
    F:text;
begin
        assign(F,'bac.txt'); Reset(F); Read(F,x); V[x]:=V[x]+1; a:=0;
        while not eof(F) do
                begin
                        Read(F,y);
                        while (x=y) and (y<>-1) do Read(F,y);
                        if y=-1 then a:=a+1
                        else V[y]:=V[y]+1;
                        x:=y;
                end;
        close(F);
end;
begin
        clrscr;
        initializare(V);
        fisier(V,a);
        afisare(V,a);
        readln;
end.
