{V85-01-BA}
program bac;
uses crt;
type vek=array[1..15] of real;
var A:vek;
    n:byte;
procedure GenereazaVector(var n:byte; var V:vek);
var i:byte;
begin
        Write('n='); Readln(n);
        for i:=1 to n do
                begin
                        Write('A[',i,']='); Readln(V[i]);
                end;
end;
procedure AfiseazaVector(n:byte; V:vek);
var i:byte;
begin
        for i:=1 to n do Write(V[i]:0:2,' ');
        Writeln;
end;
procedure Afiseaza(n:byte; V:vek);
var i:byte;
begin
        for i:=1 to n do
                if frac(V[i])<>0 then Write(trunc(V[i]+1),' ',trunc(V[i]),' ')
                else Write(V[i]:0:0,' ',V[i]:0:0,' ');
end;
begin
        clrscr;
        GenereazaVector(n,A);
        AfiseazaVector(n,A);
        Afiseaza(n,A);
        readln;
end.