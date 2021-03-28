{Andrei Balu - v89 - 3}
program bac;
uses crt;
procedure cifre;
type vek=array[0..9] of byte;
var i,x,a:integer;
    V:vek;
    F,G:text;
begin
        assign(F,'date.in'); Reset(F);
        for i:=0 to 9 do V[i]:=0;
        while not eof(F) do
                begin
                        Read(F,x);
                        while x<>0 do
                                begin
                                        if V[x mod 10]=0 then V[x mod 10]:=1;
                                        x:=x div 10;
                                end;
                end;
        close(F); a:=0;
        for i:=0 to 9 do
                if V[i]=0 then a:=a+1;
        assign(G,'date.out'); Rewrite(G); Write(G,a); close(G);

end;
begin
        clrscr; cifre;
end.
