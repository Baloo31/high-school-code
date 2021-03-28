{Andrei Balu - v90 - 1}
program eins;
uses crt;
type mat = array [1..5,1..5] of byte;
var A:mat;
    n,m:byte;
procedure prelucrare(var A:mat; n,m:byte);
var i,j,v:byte;
begin
        v:=1;
        for i:=1 to n do
                if i mod 2 <> 0 then
                        for j:=1 to m do
                                begin
                                        A[i,j]:=v; v:=v+1;
                                end
                        else for j:=m downto 1 do
                                begin
                                        A[i,j]:=v; v:=v+1;
                                end;

end;
procedure afiseaza(A:mat; n,m:byte);
var i,j:integer;
begin
        for i:=1 to n do
                begin
                        for j:=1 to m do Write(A[i,j],' ');
                        Writeln;
                end;
end;
begin
        clrscr;
        Write('n='); readln(n); Write('m='); readln(m);
        prelucrare(A,n,m);
        afiseaza(A,n,m);
        readln;
end.
