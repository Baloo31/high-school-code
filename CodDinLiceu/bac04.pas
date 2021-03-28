program bac04;
uses crt;
var a,b,c:real;
begin
        clrscr;
        Write('a='); Readln(a); Write('b='); Readln(b); Write('c='); Readln(c);
        if b < c then
                if b > a then Write(1)
                else Write(4)
        else if a > b then Write(2)
             else Write(3);
        Readln;
end.