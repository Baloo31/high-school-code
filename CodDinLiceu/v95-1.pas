{Andrei Balu - V95 - 1}
Program bac;
uses crt;
var u,v:string[100];
    F:text;
procedure P1;
var i:integer;
begin
        Writeln(F,u); i:=1;
        while u<>v do
                begin
                        if v[i]=u[i] then i:=i+1
                        else
                        begin
                                u[i]:=v[i];
                                Writeln(F,u);
                        end;
                end;
end;
begin
        Clrscr;
        Write('Primul cuvant: '); Readln(u);
        Write('Al doilea cuvant: '); Readln(v);
        assign(F,'TRANS.TXT'); Rewrite(F);
        if length(u)=length(v) then P1
        else
                begin
                        Write('EROARE');
                        Readln;
                end;
        Close(F);
end.
