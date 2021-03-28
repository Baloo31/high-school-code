{Andrei Balu - v91 - 2}
Program bac;
uses crt;
type mat=array[1..20,1..20] of real;
var A:mat;
    n:integer;
function maxl(A:mat; n:byte; lin:byte):real;
var col:byte;
    m:real;
begin
        m:=-maxint;
        for col:=1 to n do
                if A[lin,col]>m then m:=A[lin,col];
        maxl:=m;
end;
procedure citeste(var A:mat; n:byte);
var i,j:byte;
begin
        for i:=1 to n do
                for j:=1 to n do
                        begin
                                Write('A[',i,',','j='); Readln(A[i,j]);
                        end;
end;
function max(A:mat; n:integer):real;
var val:real;
    l:byte;
begin
        val:=-maxint;
        for l:=1 to n do
                if maxl(A,n,l) > val then val:=maxl(A,n,l);
        max:=val;
end;
begin
        clrscr;
        Write('n='); Readln(n); citeste(A,n);
        Write(max(A,n):0:2);
        readln;
end.