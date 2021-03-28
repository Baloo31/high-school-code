program ubb02;
var c : byte;
    F,G : text;
function nr_divizori(x:longint):integer;
var d : longint;
    nrd : integer;
begin
        nrd:=0;
        for d:=1 to trunc(sqrt(x)) do
                if x mod d=0 then
                        if d*d=x then nrd:=nrd+1
                        else nrd:=nrd+2;
        nr_divizori:=nrd;
end;
procedure cerinta1;
var n,a,i : integer;
    x : longint;
    zero : boolean;
begin
        Readln(F,n); a:=0;
        for i:=1 to n do
                begin
                        Read(F,x);
                        while x mod 10 <> 0 do x:=x div 10;
                        if x=0 then a:=a+1;
                end;
        Write(G,a);
end;
procedure cerinta2;
var n,j,i,nr,p,nrc,x,pr,ult,pu,xmin,nrdm,nrd,z:longint;
begin
        Readln(F,n);
        for j:=1 to n do
                begin
                        Read(F,nr);
                        p:=1; nrc:=1; pu:=10;
                        xmin:=nr; nrdm:=nr_divizori(nr); x:=nr;
                        while x>0 do
                                begin
                                        x:=x div 10;
                                        p:=p*10;
                                        nrc:=nrc+1;
                                end;
                        p:=p div 10; z:=p;
                        for i:=1 to nrc-1 do
                                begin
                                        pr:=nr div p;
                                        ult:=nr mod p;
                                        x:=ult*pu+pr;
                                        if x div z >0 then
                                                begin
                                                        nrd:=nr_divizori(x);
                                                        if nrd<nrdm then
                                                                begin
                                                                        xmin:=x;
                                                                        nrdm:=nrd;
                                                                end
                                                        else if nrd=nrdm then
                                                                if xmin<x then xmin:=x;
                                                end;
                                        pu:=pu*10;
                                        p:=p div 10;
                                end;
                        Write(G,xmin,' ');
        end;
end;
begin
        assign(F,'forus.in'); Reset(F);
        assign(G,'forus.out'); Rewrite(G);
        Readln(F,c);
        if c=1 then cerinta1
        else cerinta2;
        close(F);
        close(G);
end.
