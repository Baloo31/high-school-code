program problema1;
uses crt;
type cif=array[0..9] of byte;
var x, xmax, xmin:longint;
    i:integer;
    a:byte;
    V:cif;
begin
        Clrscr;
        Write('x='); Readln(x);
        for i:=0 to 9 do V[i]:=0;
        while x<>0 do
                begin
                        V[x mod 10]:=V[x mod 10]+1;
                        x:=x div 10;
                end;
        i:=9; xmax:=0;
        while i>=0 do
                begin
                        a:=V[i];
                        while a<>0 do
                                begin
                                        xmax:= xmax*10 + i;
                                        a:=a-1;
                                end;
                        i:=i-1;
                end;
        i:=1;
        while V[i]=0 do i:=i+1; xmin:=i; V[i]:=V[i]-1;
        while V[0]<>0 do
                begin
                        xmin:=xmin * 10;
                        V[0]:=V[0]-1;
                end;
        while i<=9 do
                begin
                        while V[i]<>0 do
                                begin
                                        xmin:=xmin*10 + i;
                                        V[i]:=V[i]-1;
                                end;
                        i:=i+1;
                end;
        Write(xmax,'  ',xmin);
        Readln;
End.








