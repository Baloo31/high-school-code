program eins;
uses crt;
var k,p:longint;
begin
        clrscr;
        Write('k='); Readln(k);
        k:=k div 10; p:=100;
        while p<k do p:=p*10;
        k:=k mod (p div 10);
        Write(k div 1);
        Readln;
end.
