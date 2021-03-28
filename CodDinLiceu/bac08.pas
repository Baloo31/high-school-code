program bac;
uses crt;
type vek=array[1..6] of byte;
var
begin
        Clrscr;
        Write('k='); Readln(k);
        j:=1;
        for i:=1 to 10 do
                if (i<k) or (i>k+4) then
                        begin
                                V[j]:=i;
                                j:=j+1;
                        end;
        V[j]:=0;


        Readln;
end.