program bac;
{V80 - 3 - Andrei Balu}
type vek=array[1..100] of string[20];
var F,G:text;
procedure sorteaza(var V:vek; n:byte);
var i,j:byte;
    a:string[20];
begin
        for i:=1 to  n-1 do
                for j:=i+1 to n do
                        if length(V[i])>length(V[j]) then
                                begin
                                        a:=V[i]; V[i]:=V[j]; V[j]:=a;
                                end;
end;
procedure construire(var F:text; var G:text);
var i,n:byte;
    V:vek;
begin
        Readln(F,n); i:=1;
        while i<=n do
                begin
                        Readln(F,V[i]); i:=i+1;
                end;
        sorteaza(V,n);
        for i:=1 to n do Writeln(G,V[i]);
end;
begin
        assign(F,'cuvinte.in'); Reset(F);
        assign(G,'cuvinte.out'); Rewrite(G);
        construire(F,G);
        close(F); close(G);
end.