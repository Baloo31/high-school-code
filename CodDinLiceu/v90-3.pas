{Andrei Balu - v90 - 3}
program bac;
uses crt;
var F:text;
    S:string[50];
function verifica(S:string):boolean;
var T:string[50];
    i:integer;
    v:boolean;
begin
        v:=true; i:=1;
        assign(F,'date.in'); Reset(F); Readln(F,T); close(F);
        while (i<=length(S)) and v do
                if pos(S[i],T)=0 then v:=false
                else i:=i+1;
        if S=' ' then verifica:=false
        else verifica:=v;
end;
begin
        clrscr;
        Write('S='); Readln(S);
        if verifica(S) then Write('DA')
        else Write('NU');
        readln;
end.