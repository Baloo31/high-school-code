{Andrei Balu - V96 - 3}
Program bac;
uses crt;
var F:text;
    n,i,x,a,S:integer;
function divizori(x:integer):byte;
begin
        if frac(sqrt(x))=0 then divizori:=1
        else divizori:=0;
end;
begin
        Clrscr;
        assign(F,'BAC.TXT'); Reset(F);
        Readln(F,n); a:=0; S:=0;
        for i:=1 to n do
                begin
                        Read(F,x);
                        if divizori(x)=1 then
                                begin
                                        S:=S+x; a:=a+1;
                                end;
                end;
        Close(F);
        if a<>0 then Write(S/a:0:2)
        else Write('EROARE');
        Readln;
end.
