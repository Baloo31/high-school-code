uses crt;
var S:string[100];
    a,p,i:byte;
    c:char;
begin
        clrscr;
        Write('Textu: '); Readln(S);
        Write('Caracteru: '); Readln(c);
        p:=length(S);
        for i:=1 to p do
                if S[i]=c then a:=a+1;
        Write('Caracterul apare de ',a,' ori');
        readln;
end.