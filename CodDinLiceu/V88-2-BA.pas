{V88-2-BA}
program bac;
uses crt;
var k,x,y:longint;
function prim(x:longint):boolean;
var d:longint;
    v:boolean;
begin
        v:=true; d:=2;
        while (d<=x div 2) and v do
                if x mod d = 0 then v:=false
                else d:=d+1;
        prim:=v;
end;
procedure p(n:longint; var p1,p2:longint);
var i:longint;
begin
        i:=n-1; p1:=0; p2:=0;
        while (i>1) and (p1=0) do
                if prim(i) then p1:=i
                else i:=i-1;
        i:=n+1;
        while (p2=0) do
                if prim(i) then p2:=i
                else i:=i+1;
end;
procedure afisare(k:longint);
var x,y,i,a:longint;
begin
        i:=4; a:=0;
        while a<>k do
                begin
                        p(i,x,y);
                        if (x=i-1) and (y=i+1) then
                                begin
                                        Write(i,' '); a:=a+1;
                                end;
                        i:=i+1;
                end;
end;
begin
        clrscr;
        Write('k='); Readln(k);
        afisare(k);
        readln;
end.