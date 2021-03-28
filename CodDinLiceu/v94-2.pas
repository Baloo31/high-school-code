{Andrei Balu - V94 - 2}
Program bac;
uses crt;
var F:text;
procedure ncif(n:longint; var c:byte);
begin
        c:=0;
        repeat
                c:=c+1;
                n:=n div 10;
        until n=0;
end;
function cate_nr_maxim(var F:text):longint;
var c,cmax:byte;
    x,nr:longint;
begin
        cmax:=0; nr:=0;
        while not eof(F) do
                begin
                        Read(F,x); ncif(x,c);
                        if c>cmax then
                                begin
                                        cmax:=c;
                                        nr:=1;
                                end
                        else if c=cmax then nr:=nr+1;
                end;
        cate_nr_maxim:=nr;

end;
begin
        clrscr;
        assign(F,'date.txt'); Reset(F);
        Write(cate_nr_maxim(F));
        close(F);
        Readln;
end.
