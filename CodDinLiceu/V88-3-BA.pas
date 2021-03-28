{V88-3-BA}
Program bac;
uses crt;
type vek=array[0..99] of integer;
var V:vek;
procedure initializare(var V:vek);
var i:byte;
begin
        for i:=0 to 99 do V[i]:=0;
end;
procedure aparitii(var V:vek);
var x,a:byte;
    F,G:text;
begin
        assign(F,'date.in'); Reset(F);
        assign(G,'date.out'); Rewrite(G);
        initializare(V); a:=0;
        while not eof(F) do
                begin
                        Read(F,x); V[x]:=V[x]+1;
                end;
        for x:=0 to 99 do
                if V[x]=1 then a:=a+1;
        Write(G,a,' ');
        close(F); close(G);
end;
begin
        clrscr;
        aparitii(V);
end.