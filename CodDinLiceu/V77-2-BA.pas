program bac;
{V77 - 2 - Balu Andrei}
uses crt;
var s:string[250];
    n:byte;
procedure elimin(s1,s2:string; var s:string);
var i:char;
begin
        s:='';
        for i:='a' to 'z' do
                if (pos(i,s1)<>0) or (pos(i,s2)<>0) then s:=s+i;
end;
procedure citeste(n:byte);
var x,y,s:string[250];
    nr:byte;
begin
        Write('Sir: '); Readln(x); s:='';
        for nr:=2 to n do
                begin
                        Write('Sir: '); Readln(y); elimin(x,y,s); x:=s;
                end;
        Write(s);
end;
begin
        clrscr; Write('n='); Readln(n); citeste(n); readln;
end.