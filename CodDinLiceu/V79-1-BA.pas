program bac;
{V79 - 1 - Andrei Balu}
uses crt;
var x:longint;
procedure elimin(var x:longint);
var z:longint;
begin
        x:=x div 10; z:=10;
        while z<=x do z:=z*10;
        z:=z div 10; x:=x mod z;
end;
begin
        clrscr;
        Write('x='); Readln(x); elimin(x); Write(x);
        readln;
end.
