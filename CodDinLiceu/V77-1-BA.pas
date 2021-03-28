program bac;
{V77 - 1 - Balu Andrei}
uses crt;
var F:text;
    n:integer;
procedure afiseaza(n:byte);
var i,j:byte;
    F:text;
begin
        assign(F,'bac.txt'); Rewrite(F);
        for i:=n downto 1 do
                begin
                        for j:=i downto 1 do Write(F,j,' ');
                        Writeln(F);
                end;
        Close(F);
end;
begin
        clrscr;
        Write('n='); Readln(n);
        afiseaza(n);
end.
