{Andrei Balu - v89 - 1}
program bac;
uses crt;
var n,k:integer;
procedure verificare(n:integer; var k:integer);
var P:integer;
begin
        k:=1; P:=1;
        while P<=n do
                begin
                        P:=P*k; k:=k+1;
                end;
        k:=k-1;
        if k>0 then
                begin
                        P:=P div k; k:=k-1;
                end;
        if P<>n then k:=0;
end;
begin
        clrscr;
        Write('n='); Readln(n);
        verificare(n,k);
        if k=0 then Write('NU')
        else Write('DA ',k);
        readln;
end.