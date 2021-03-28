{V86-2-BA}
Program bac;
uses crt;
var S,T:string[200];
function sub(var x:string; c:char):byte;
var r:byte;
begin
        r:=length(x);
        while pos(c,x)<>0 do delete(x,pos(c,x),1);
        sub:=r-length(x);
end;
procedure comune(S,T:string);
var i:integer;
begin
        for i:=1 to length(S) do
                if sub(T,S[i])<>0 then Write(S[i],' ');
end;
begin
        clrscr;
        Write('S: '); Readln(S);
        Write('T: '); Readln(T);
        comune(S,t);
        readln;
end.