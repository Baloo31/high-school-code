{Andrei Balu - V97 - 3}
Program bac;
uses crt;
type mat=array[0..9,0..9] of real;
var X:mat;
    n,i,j,pmax:byte;
    max,k:real;
    F:text;
function suma(X:mat; n:byte; p:byte):real;
var i:byte;
    S:real;
begin
        S:=0;
        for j:=0 to n-1 do S:=S+X[p,j];
        suma:=S;
end;
procedure citire;
begin
        Write('n='); Readln(n);
        for i:=0 to n-1 do
                for j:=0 to n-1 do
                        begin
                                Write('X[',i,',',j,']='); Readln(X[i,j]);
                        end;
end;
begin
        Clrscr;
        citire;
        assign(F,'BAC.OUT'); Rewrite(F);
        max:=suma(X,n,0); pmax:=0;
        for i:=1 to n-1 do
                begin
                        k:=suma(X,n,i);
                        if k>max then
                                begin
                                        max:=k; pmax:=i;
                                end;
                end;
        for j:=0 to n-1 do Write(F,X[pmax,j]:0:2,' ');
        Close(F);
end.