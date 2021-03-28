program eins;
uses crt;
type vek=array[1..20] of string[100];
var S,T:string[100];
    V:vek;
    i,j,n,p,anz,x:integer;
begin
        clrscr;
        Write('S='); Readln(S); S:=S+' '; i:=0;
        while S<>'' do
                begin
                        i:=i+1;
                        p:=pos(' ',S);
                        V[i]:=copy(S,1,p-1);
                        delete(S,1,p);
                end;
        n:=i; anz:=0;
        for i:=1 to n do
                begin
                        x:=length(V[i]);
                        T:=copy(V[i],1,x div 2 +1) + copy(V[i],x div 2  +1,x);
                        for j:=1 to n do
                                if (V[j]=T) and (i<>j) then anz:=anz+1;
                end;
        if anz<>0 then Write('DA')
        else Write('NU');
        readln;
end.