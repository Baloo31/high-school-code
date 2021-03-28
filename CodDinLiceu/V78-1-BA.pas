program bac;
{V78 - 1 - Balu Andrei}
uses crt;
procedure afiseaza;
var x,S,a,z:integer;
begin
        Write('x='); Readln(x); z:=x; a:=0; S:=0;
        repeat
                if x mod 2=0 then
                        begin
                                S:=S+x; a:=a+1;
                        end;
                Write('x='); Readln(x);
        until x=z;
        if a<>0 then Write(S/a:0:1,' ',a)
        else Write('Nu exista');
end;
begin
        clrscr;
        afiseaza;
        readln;
end.