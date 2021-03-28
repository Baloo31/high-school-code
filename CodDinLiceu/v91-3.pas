{Andrei Balu - v91 - 3}
program bac;
uses crt;
var n:longint;
function invers(n:longint):longint;
type vec=array[0..9] of byte;
var V:vec;
    i:byte;
    nr:longint;
begin
        for i:=0 to 9 do V[i]:=0;
        while n<>0 do
                begin
                        V[n mod 10]:=V[n mod 10] +1; n:=n div 10;
                end;
        i:=9; nr:=0;
        while i>=1 do
                begin
                        while V[i]<>0 do
                                begin
                                        nr:= nr*10 + i; V[i]:=V[i]-1;
                                end;
                        i:=i-1;
                end;
        while V[0]<>0 do
                begin
                        nr:=nr*10 +i; V[i]:=V[i]-1;
                end;
        invers:=nr;
end;
begin
        clrscr;
        Write('n='); Readln(n);
        if n=invers(n) then Write('Nu exista')
        else Write(invers(n));
        readln;
end.

