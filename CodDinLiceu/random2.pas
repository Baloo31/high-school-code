program bac;
uses crt;
type vek=array[1..9] of byte;
var V:vek;
    c,i:byte;
    m,n:longint;
begin
        Clrscr;
        Write('n='); Readln(n);
        for i:=1 to 9 do V[i]:=0;
        c:=0;
        while (n<>0) and (c< n mod 10) do
                begin
                        c:=n mod 10; n:=n div 10; V[c]:=V[c]+1;
                end;
        if n=0 then Write('Nu exista')
        else
        begin
                m:=(n div 10)*10+c; V[c]:=V[c]-1; V[n mod 10]:=V[n mod 10]+1;
                i:=1;
                while i<=9 do
                begin
                        while V[i]<>0 do
                                begin
                                        V[i]:=V[i]-1; m:= m*10 + i;
                                end;
                        i:=i+1;
                end;
                Writeln(m);
        end;
        Readln;
end.