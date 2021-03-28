{Andrei Balu - V96 - 2}
Program bac;
uses crt;
type vek=array[1..100] of integer;
var V:vek;
    n:integer;
procedure citire;
var i:integer;
begin
        Write('n='); readln(n);
        for i:=1 to n do
                begin
                        Write('V[',i,']='); Readln(V[i]);
                end;
end;
procedure elim2(var V:vek; var n:integer);
var i,x:integer;
begin
        if n<2 then x:=-1
        else
                begin
                        x:=V[2];
                        for i:=2 to n-1 do V[i]:=V[i+1];
                        n:=n-1;
                end;
        if x<>-1 then
                begin
                        Writeln('Elementul 2 din vector este ',x);
                        Writeln('Dupa extragerea lui, vectorul arata asa: ');
                        for i:=1 to n do Write(V[i],' ');
                end
        else Write(x,' (fiindca vectorul nu are suficiente elemente)');
end;
begin
        Clrscr;
        citire;
        elim2(V,n);
        Readln;
end.