{Andrei Balu - V97 - 1}
Program bac;
uses crt;
var a,b,c:real;
begin
        Clrscr;
        Write('a='); Readln(a);
        Write('b='); Readln(b);
        Write('c='); Readln(c);
        if (a=sqrt(b*c)) or (b=sqrt(a*c)) or (c=sqrt(a*b)) then Write('DA')
        else Write('NU');
        Readln;
end.