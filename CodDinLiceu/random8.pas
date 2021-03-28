uses crt;
var S:string[100];
    a:byte;
    c:char;
begin
        clrscr;
        Write('Textu: '); Readln(S);
        Write('Caracteru: '); Readln(c);
        while pos(c,S)<>0 do
                begin
                        a:=a+1;
                        delete(S,pos(c,S),1);
                end;
        Write('Caracterul apare de ',a,' ori');
        readln;
end.