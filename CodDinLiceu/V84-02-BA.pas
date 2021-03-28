{V84-01-BA}
program bac;
uses crt;
type mat=array[1..20,1..20] of byte;
var A:mat;
    n:byte;
procedure Construieste(n:byte; var A:mat);
{versiunea mea merge numai la numere pare din pacate.. }
var i,j:integer;
begin
        for i:=1 to n div 2 do
        for j:=1 to n div 2 do
        if (i=1) or (j=1) then
                begin
                        A[i,j]:=1; A[n-i+1,j]:=1; A[i,n-j+1]:=1; A[n-i+1,n-j+1]:=1;
                end
                else if ((A[i-1,j-1]+A[i-1,j]+A[i,j-1])=0) then
                     begin
                           A[i,j]:=1; A[n-i+1,j]:=1; A[i,n-j+1]:=1; A[n-i+1,n-j+1]:=1;
                     end
                     else if ((A[i-1,j-1]+A[i-1,j]+A[i,j-1])=3) then
                          begin
                                A[i,j]:=0; A[n-i+1,j]:=0; A[i,n-j+1]:=0; A[n-i+1,n-j+1]:=0;
                          end
                          else if (A[i-1,j-1]+A[i-1,j]+A[i,j-1])<2 then
                                begin
                                        A[i,j]:=1; A[n-i+1,j]:=1; A[i,n-j+1]:=1; A[n-i+1,n-j+1]:=1;
                                end
                                else
                                begin
                                        A[i,j]:=0; A[n-i+1,j]:=0; A[i,n-j+1]:=0; A[n-i+1,n-j+1]:=0;
                                end;
end;
procedure Afiseaza(n:byte;  A:mat);
var i,j:byte;
begin
        for i:=1 to n do
                begin
                        for j:=1 to n do Write(A[i,j],' ');
                        Writeln;
                end;
end;
begin
        clrscr;
        Write('n='); Readln(n);
        Construieste(n,A);
        Afiseaza(n,A);
        Readln;
end.
