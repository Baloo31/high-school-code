program eins;
uses crt;
type mat=array[1..10000] of integer;
var n,i,j,k:integer;
    A:mat;
function f(n:integer; A:mat):integer;
var r:integer;
begin
        r:=0;
        for i:=1 to n-1 do
                if A[i]<>A[i+1] then
                        begin
                                r:=1;
                                for j:=1 to n-1 do
                                        if A[j]>A[j+1] then
                                                begin
                                                        r:=2;
                                                        for k:=1 to n-1 do
                                                                if A[k]<A[k+1] then r:=-1;
                                                end;
                        end;
        f:=r;
end;
begin
        Clrscr;
        Write('n='); Readln(n);
        for i:=1 to n do
                begin
                        Write('A[',i,']=');Readln(A[i]);
                end;
        Writeln(f(n,A));
        Readln;
End.
