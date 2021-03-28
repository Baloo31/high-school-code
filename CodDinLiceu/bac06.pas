program bac06;
var F, G : text;
    a, b : integer;
    m :real;
procedure schimba(var a,b :integer);
{schimba valoarea lui a cu cea a lui b}
var x:integer;
begin
        x:=a; a:=b; b:=x;
end;
begin
        assign(F,'numere.in'); reset(F);
        assign(G,'numere.out'); rewrite(G);
        while not eof(F) do
                begin
                        Readln(F,a,b);
                        m:=(a+b)/2;
                        if a>b then schimba(a,b);
                        Writeln(G,a,' ',m:0:1,' ',b);
                end;
        Close(F);
        Close(G);
end.