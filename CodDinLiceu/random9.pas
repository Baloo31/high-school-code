uses crt;
var S:string[100];
    p,a:byte;
    c:char;
begin
        clrscr;
        Write('Text: '); Readln(S);
        Write('Caracter: '); Readln(c);
        p:=pos(c,S);
        while p<>0 do
                begin
                        a:=a+1;
                        delete(S,p,1);
                        p:=pos(c,S);
                end;
        Write('Caracterul apare de ',a,' ori');
        readln;
end.
