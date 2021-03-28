program bac;
var n,j:longint;
    F,G:text;
    e:real;
function suma(n:longint):real;
var s:real;
    i:integer;
begin
        s:=0;
        for i:=1 to n do s:=s+ 1/sqrt(i);
        suma:=s;
end;
begin
        assign(F,'bac.in'); Reset(F);
        assign(G,'bac.out'); Rewrite(G);
        Read(F,n); e:=0;
        for j:=1 to n do
                if j mod 2 =0 then e:=e - (suma(j)-suma(j-1))
                else e:=e + 1/sqrt(j);
        Write(G,e:0:3);
        Close(F);
        Close(G);
end.
