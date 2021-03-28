program bac01;
uses crt;
var n,i:integer;
    R:real;
begin
        Clrscr;
        Readln(n); R:=1;
        for i:=2 to n do
                if i mod 2=0 then R:=R - sqrt(i)
                else R:=R + sqrt(i);
        Write(R:0:4);
        Readln;
end.
