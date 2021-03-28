program bac;
{V76 - 1 - Balu Andrei}
uses crt;
var S:string[20];
begin
        clrscr; Write('Cuvant: '); Readln(S);
        if length(S)<=2 then Write('CUVANT VID')
        else
                begin
                        if length(S) mod 2=0 then delete(S,length(S) div 2,2)
                                else delete(S,length(S) div 2 +1,1);
                        Write(S);
                end;
        readln;
end.