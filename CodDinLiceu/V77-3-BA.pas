program bac;
{V77 - 3 - Balu Andrei}
uses crt;
var n:integer;
procedure afiseaza(n:integer);
var x,max,a,i:integer;
begin
        a:=0; max:=-maxint;
        for i:=1 to n do
                begin
                        Write('x='); Readln(x);
                        if (x<0) and (x>max) then
                                begin
                                        max:=x; a:=1;
                                end
                                else if x=max then a:=a+1;
                end;
        if a=0 then Write('Nu exista')
        else Write(max,' ',a);
end;
begin
        clrscr; Write('n='); Readln(n); afiseaza(n); Readln;
end.