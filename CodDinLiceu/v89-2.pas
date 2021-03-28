{Andrei Balu - v89 - 2}
program bac;
uses crt;
var
procedure f(var n:longint; k:longint; p:byte);
begin
        p:=0;
        while n mod k=0 do
                begin
                        p:=p+1; n:=n div k;
                end;
end;
begin
        clrscr;
        Write('n='); Readln(n);
        readln;
end.