program bac;
{V79 - 3 - Andrei Balu}
uses crt;
type apar=array[0..99] of integer;
var F:text;
procedure initializare(var V:apar);
var j:byte;
begin
        for j:=0 to 99 do V[j]:=0;
end;
procedure afisare;
var n,i,max:integer;
    x:byte;
    V:apar;
begin
        initializare(V);
        Readln(F,n); max:=1;
        for i:=1 to n do
                begin
                        Read(F,x); V[x]:=V[x]+1;
                        if V[x]>max then max:=V[x];
                end;
        for i:=99 downto 0 do
                if V[i]=max then Write(i,' ');
end;
begin
        clrscr;
        assign(F,'numere.txt'); Reset(F);
        afisare;
        close(F);
        readln;
end.