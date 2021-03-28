{V86-1-BA}
Program bac;
uses crt;
var n:longint;
function prim(x:longint):boolean;
var d:longint;
    p:boolean;
begin
        p:=true; d:=2;
        while (d <= x div 2) and p do
                if x mod d=0 then p:=false
                else d:=d+1;
        if (x>1) then prim:=p
        else prim:=false;
end;
function superprim(n:longint):boolean;
begin
        if n<>0 then
                begin
                        while (n<>0) and prim(n) do n:=n div 10;
                        if n=0 then superprim:=true
                        else superprim:=false;
                end
        else superprim:=false;
end;
begin
        Clrscr;
        Write('n='); Readln(n);
        if superprim(n) then Write('DA')
        else Write('NU');
        Readln;
end.