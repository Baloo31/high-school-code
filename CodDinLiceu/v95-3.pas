{Andrei Balu - V95 - 3}
Program bac;
uses crt;
type cif=array[0..9] of byte;
var X,Y:cif;
    a,b:longint;
    i:byte;
procedure aparitii(var V:cif; x:longint);
begin
        for i:=0 to 9 do V[i]:=0;
        if x=0 then V[x]:=1
        else while x<>0 do
                begin
                        if V[x mod 10]=0 then V[x mod 10]:=1;
                        x:=x div 10;
                end;
end;
function exista(X,Y:cif):boolean;
var v:boolean;
begin
        i:=0; v:=false;
        while (i<=9) and not v do
                if X[i]*Y[i]<>0 then v:=true
                else i:=i+1;
        exista:=v;
end;
begin
        Clrscr;
        Write('a='); Readln(a); Write('b='); Readln(b);
        aparitii(X,a);
        aparitii(Y,b);
        if exista(X,Y) then Write('DA')
        else Write('NU');
        Readln;
end.
