program eins;
uses crt;
var F:text;
    a,b,x:byte;
    nr:longint;
    al,bl:boolean;
procedure schimba(var x,y:byte);
var aux:integer;
begin
        aux:=x; x:=y; y:=aux;
end;
begin
        clrscr;
        assign(F,'bac.htz'); Reset(F);
        al:=true; bl:=true;
        Readln(F,a,b);
        if a>b then schimba(a,b);
        while not eof(F) do
                begin
                        Read(F,x);
                        if (x>a) and al then
                                if (x>b) and bl then
                                        begin
                                                Write(a,b,x); al:=false; bl:=false;
                                        end
                                else
                                        begin
                                                Write(a,x); al:=false;
                                        end
                        else if (x>a) and not al and bl then
                                begin
                                        Write(b,x); bl:=false;
                                end
                                else Write(x);
                end;
        if bl then Write(b);
        readln;
end.