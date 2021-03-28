program eins;
uses crt;
type triunghi=record
                   A,B,C :record
                                x,y:integer;
                          end;
                   end;
var t:triunghi;
begin
        clrscr;
        Write('Xa='); Readln(t.A.x); Write('Ya='); Readln(t.A.y);
        Writeln('[',t.A.x,',',t.A.y,']');
        Write('Xb='); Readln(t.B.x); Write('Yb='); Readln(t.B.y);
        Writeln('[',t.B.x,',',t.B.y,']');
        Write('Xc='); Readln(t.C.x); Write('Yc='); Readln(t.C.y);
        Writeln('[',t.C.x,',',t.C.y,']');
        readln;
end.