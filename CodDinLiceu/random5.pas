program ubb01;
var F,G: text;
    c: byte;

procedure p1;
{rezolvarea cerintei 1}
var m:integer;
begin
        Readln(F,m); Writeln(G,8*m);
end;

procedure p2;
{rezolvarea cerintei 2}
var n,t,element_maxim:integer;
begin
        Readln(F,n);
        element_maxim:=0; t:=0;
        while element_maxim < n do
                begin
                        element_maxim := element_maxim + 8*t;
                        t:=t+1;
                end;
        Writeln(G,t-1);
end;

begin
        {Programul principal}
        assign(F,'patrate.in'); Reset(F);
        assign(G,'patrate.out'); Rewrite(G);
        Readln(F,c);
        if c=1 then p1
        else p2;
        Close(F); Close(G);
end.
