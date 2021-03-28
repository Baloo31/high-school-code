{Andrei Balu - V92 -3}
program bac;
uses crt;
var b:integer;
    a,x:real;
procedure raport(x:real; var a:real; var b:integer);
begin
        b:=0;
        repeat
                b:=b+1; a:=b*x;
        until frac(a)=0;
end;
begin
        clrscr;
        Write('x='); Readln(x);
        raport(x,a,b); Write(a:0:0,' ',b);
        Readln;
end.