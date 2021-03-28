program eins;
var F,G:text;
    c:byte;
function rasturnat(x:longint):longint;
var z:longint;
begin
        z:=0;
        while x<>0 do
                begin
                        z:=z*10 + x mod 10;
                        x:=x div 10;
                end;
        rasturnat:=z;
end;
procedure P1;
var n:longint;
begin
        Readln(F,n);
        Write(G,(n-1)*10);
end;
procedure P2;
var x,i:longint;
begin
        Readln(F,x);
        for i:=1 to 3 do
                begin
                        x:=x div 10;
                        if x mod 10=0 then Write(G,0,' ')
                        else if x=rasturnat(x) then Write(G,1,' ')
                             else Write(G,2,' ');
                end;
end;
procedure P3;
var k,p,x:longint;
    nr_valori_de_k_cifre:longint;
    nr_total:longint;
    nr_zeci:longint;
    nr_pal:longint;
begin
        Readln(F,k);
        if k=1 then nr_valori_de_k_cifre:=9
        else
        begin
                p:=1; x:=k;
                while x<>1 do
                        begin
                                p:=p*10;
                                x:=x-1;
                        end;
                nr_total:=9*p;
                        if k mod 2=0 then
                                begin
                                        nr_zeci:=9*p div 10;
                                        nr_pal:=9*p div 10;
                                end
                                else
                                begin
                                        nr_zeci:=9*p div 100;
                                        nr_pal:=9*p div 100;
                                end;
        nr_valori_de_k_cifre:=2*(nr_total - nr_zeci) - nr_pal;
        end;
        Write(G,nr_valori_de_k_cifre);
end;
begin
        assign(F,'numere.in'); Reset(F);
        assign(G,'numere.out'); Rewrite(G);
        Readln(F,c);
        if c=1 then P1
        else if c=2 then P2
             else P3;
        close(F);
        close(G);
end.
