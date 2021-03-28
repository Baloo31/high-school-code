{Andrei Balu - V93 - 2}
Program bac;
uses crt;
var S:string[30];
procedure eliminare_litere(var S:string);
var p,n:integer;
begin
        n:=length(S); p:=1;
        while p<=n-1 do
                if S[p+1]=S[p] then
                        begin
                                delete(S,p+1,1); n:=n-1;
                        end
                        else p:=p+1;
end;
begin
        Clrscr;
        Write('Cuvant: '); Readln(S);
        eliminare_litere(S); Write(S);
        Readln;
end.