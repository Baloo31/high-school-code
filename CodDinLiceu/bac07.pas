program bac;
uses crt;
var x:longint;
    c:byte;
    v:boolean;
begin
        Clrscr;
        Write('x='); Readln(x); c:=x mod 10; x:=x div 10; v:=true;
        while (x<>0) and v do
                if x MOD 10 = c then x:=x div 10
                else v:=false;
        if v then Write('Da')
        else Write('Nu');
        Readln;
end.


