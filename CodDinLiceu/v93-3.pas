{Andrei Balu - V93 - 3}
Program bac;
uses crt;
var a,b,c:real;
procedure schimba(var x,y:real);
var a:real;
begin
        a:=x; x:=y; y:=a;
end;
begin
        Clrscr;
        Write('a='); Readln(a);
        Write('b='); Readln(b);
        Write('c='); Readln(c);
        if a>b then schimba(a,b);
        if b>c then schimba(b,c);
        if a>b then schimba(a,b);
        Write(b:0:2);
        Readln;
end.
        {Descriere:
         Dupa ce am aranjat cele 3 numere crescator,
         am afisat direct B pe post de valoarea X (din enunt),
         deoarece distanta de la X la B este in acest caz 0,
         iar X fiind tot in acest caz o valoare cuprinsa intre A si C,
         distanta de la X la A adunata cu distanta de la X la C este egala
         cu distanta de la A la C, iar astfel suma distantelor de la X la fiecare
         dintre valorile reale A,B,C este minima}

