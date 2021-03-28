{Andrei Balu - V92 - 1}
program bac;
uses crt;
var n:longint;
function verifica(n:longint):boolean;
{verifica daca exista in numarul citit cel putin o pereche de doua cifre alaturate
 care sa fie in ordine crescatoare, aceasta fiind conditia ce trebuie indeplinita
 pentru a se putea forma un numar strict mai mare care sa contina exact aceleasi
 cifre pe care le contine numarul x}
var v:boolean;
begin
        v:=false;
        while (n>10) and not v do
                if n mod 10 > n div 10 mod 10 then v:=true
                else n:=n div 10;
        verifica:=v;
end;
begin
        clrscr;
        Write('n='); Readln(n);
        if verifica(n) then Write('EXISTA')
        else Write('NU EXISTA');
        Readln;
end.