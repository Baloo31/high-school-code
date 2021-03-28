{Andrei Balu - V94 - 1}
Program bac;
uses crt;
var a,b:record
                x,y:integer;
        end;
begin
        Clrscr;
        Write('A: x=');Readln(a.x);Write('   y=');Readln(a.y);
        Write('B: x=');Readln(b.x);Write('   y=');Readln(b.y);
        Write('A(',a.x,',',a.y,')'); Writeln(' B(',b.x,',',b.y,')');
        if sqrt(sqr(a.x)+sqr(a.y)) = sqrt(sqr(b.x)+sqr(b.y)) then Write('DA')
        else Write('NU');
        Readln;
end.