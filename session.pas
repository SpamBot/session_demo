Var
x, i, n, j, k: integer;
by1,by2,by3, b, q: string;
usr, pas, login: ansistring;
s: array[1..3] of string;

Begin
readln(n); usr:=''; pas:=''; login:='';
for i:=1 to n do begin
readln(b);x:=1; k:=1; b:=b+' '; by1:='0'; by2:='0'; by3:='0'; s[3]:=' '; 
for j:=1 to length(b) do if b[j]=' ' then begin q:=copy(b, x, j-x); s[k]:=q; x:=j+1; inc(k) end;

x:=1;
for j:=1 to length(usr) do if usr[j]=' ' then begin 
q:=copy(usr, x, j-x);
if q=s[2] then by2:='1'
else x:=j+1; end;

x:=1;
for j:=1 to length(pas) do if pas[j]=' ' then begin 
q:=copy(pas, x, j-x);
if q=s[3] then by3:='1'
else x:=j+1; end;

x:=1;
for j:=1 to length(login) do if login[j]=' ' then begin 
q:=copy(login, x, j-x);
if q=s[2] then begin by1:=login[j+1]; k:=j+1; end
else x:=j+1; end;


if (s[1]='register') and (by2='0') then begin usr:=usr+s[2]+' '; pas:=pas+s[3]+' '; login:=login+s[2]+' 0 '; writeln('success: new user added'); end
else if (s[1]='register') and (by2='1') then writeln('fail: user already exists');

if (s[1]='login') and (by2='0') then writeln('fail: no such user')
else if (s[1]='login') and (by2='1') and (by3='0')  then writeln('fail: incorrect password')
else if (s[1]='login') and (by2='1') and (by3='1') and (by1='1') then writeln('fail: already logged in')
else if (s[1]='login') and (by2='1') and (by3='1') and (by1='0') then begin login[k]:='1'; writeln('success: user logged in'); end;

if (s[1]='logout') and (by2='0') then writeln('fail: no such user')
else if (s[1]='logout') and (by2='1') and (by1='0') then writeln('fail: already logged out') 
else if (s[1]='logout') and (by2='1') and (by1='1') then begin login[k]:='0'; writeln('success: user logged out'); end;

end;
End.
