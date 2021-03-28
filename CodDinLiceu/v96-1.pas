{Andrei Balu - V96 - 1}
Program bac;
uses crt;
var a,b:longint;
begin
        Clrscr;
        Write('a='); Readln(a); Write('b='); Readln(b);
        if (a=0) and (b=0) then Write('EROARE')
        else if a>b then Write(a div b,' ',a mod b)
             else Write(b div a,' ',b mod a);
        Readln;
end.