program s3;
uses crt;
var n,x,y:longint;
function putere(a,b:longint):longint;
var i,p:longint;
begin
        p:=1;
        for i:=1 to b do p:=p*a;
        putere:=p;
end;
procedure radical(n:longint; var x,y:longint);
var d,e:longint;
begin
        x:=1;
        y:=1;
        d:=2;
        while n>1 do
        begin
                e:=0;
                while n mod d =0 do
                        begin
                                e:=e+1;
                                n:=n div d;
                        end;
                if e<>0 then
                        if e mod 2 =0 then x:=x*putere(d,e div 2)
                        else
                                begin
                                        y:=y*d;
                                        e:=e-1;
                                        if e<>0 then x:=x*putere(d,e div 2);
                                end;
                d:=d+1;
        end;
end;
begin
        clrscr;
        Readln(n);
        Radical(n,x,y);
        Write('x=',x,' y=',y);
        Readln;
end.