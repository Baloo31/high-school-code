{Andrei Balu - V94 -3}
Program bac;
uses crt;
var t:string[80];
procedure eliminare_spatii(var t:string);
var p,n:integer;
begin
        n:=length(t); p:=1;
        while p<=n-1 do
                if (t[p]=' ') and (t[p+1]=t[p]) then
                        begin
                                delete(t,p+1,1); n:=n-1;
                        end
                        else p:=p+1;
end;
begin
        Clrscr;
        Write('Text: '); Readln(t);
        eliminare_spatii(t); Write(t);
        Readln;
end.
