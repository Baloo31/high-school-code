program UBB01;
uses crt;
type mat=array[1..100,1..100] of integer;
Var A:mat;
    i,j,n,m,nr:integer;
function cifraControl(x:integer):byte;
begin
        if x<=9 then cifraControl:=x
        else cifraControl:=cifraControl(x mod 10 + x div 10);
end;
function determina(nr,n,m:integer):integer;
type sir=array[0..9] of byte;
var X:sir;
    prefix,i,j:integer;
    p:longint;
    v:boolean;
begin
        for i:=0 to 9 do X[i]:=0;
        for i:=1 to n do
                for j:=1 to m do
                        X[cifraControl(A[i,j])]:=1;
        p:=1;
        while p<=nr do p:=p*10;
        p:=p div 10; v:=true; prefix:=0;
        while (p<>0) and v do
                begin
                        if X[nr div p]<>0 then prefix:=prefix*10+nr div p
                        else v:=false;
                        nr:=nr mod p;
                        p:=p div 10;
                end;
        if prefix=0 then prefix:=-1;
        determina:=prefix;
end;
begin
        Clrscr;
        Write('n='); Readln(n);
        Write('m='); Readln(m);
        for i:=1 to n do
                for j:=1 to m do
                        begin
                                Write('A[',i,',',j,']='); Readln(A[i,j]);
                        end;
        Write('Numar='); Readln(nr);
        Writeln(determina(nr,n,m));
        Readln;
end.