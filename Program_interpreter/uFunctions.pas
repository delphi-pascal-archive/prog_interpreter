unit uFunctions;

interface
uses Sysutils;

   function MStrToFloat(c:string; var d:extended):boolean;   //StrToFloat
   function MFloatToStr(x:extended):string;
   function MDateToStr(Dt:TDateTime):string;
   function MTimeToStr(Dt:TdateTime):string;
   function MDateTimeToStr(Dt:TDateTime):string;
   function MStrToDate(Dt:string):double;
   function MStrToTime(Dt:string):double;
   function MStrToDateTime(Dt:string):double;

implementation

function MStrToFloat(c:string; var d:extended):boolean;   //StrToFloat
var err:integer;
    s:string;
begin
  s:=Trim(c);
  s:=StringReplace(s,',','.',[rfReplaceAll]);
  if (s<>'') and (s[1]='"') then system.delete(s,1,1);
  if (s<>'') and (s[length(s)]='"') then system.delete(s,length(s),1);
  Val(s,d,err);
  result:=err=0;
end;

function MFloatToStr(x:extended):string;
var s:string;
    i,j,k:word;
begin
  Str(x:0:12,s);
  i:=Pos('.',s);
  k:=0;
  for j:=Length(s) downto i+2 do if s[j]='0' then inc(k) else break;
  if k>0 then system.delete(s,Length(s)-k+1,k);
  if system.copy(s,length(s)-1,2)='.0' then system.delete(s,length(s)-1,2);
  result:=s;
end;

function MDateToStr(Dt:TDateTime):string;
var s:string[50];
    t:string[4];
    Y,M,D:word;
begin
  DecodeDate(Dt,Y,M,D);
  t:=IntToStr(D);
  if length(t)<2 then t:='0'+t;
  s:='/'+t;
  t:=IntToStr(M);
  if length(t)<2 then t:='0'+t;
  s:='/'+t+s;
  t:=IntToStr(Y);
  while length(t)<4 do t:='0'+t;
  s:=t+s;
  result:=s;
end;

function MTimeToStr(Dt:TdateTime):string;
var s:string[50];
    t:string[4];
    H,M,S1,S2:word;
begin
  DecodeTime(Dt,H,M,S1,S2);
  t:=IntToStr(S2);
  while length(t)<3 do t:='0'+t;
  s:='.'+t;
  t:=IntToStr(S1);
  if length(t)<2 then t:='0'+t;
  s:=':'+t+s;
  t:=IntToStr(M);
  if length(t)<2 then t:='0'+t;
  s:=':'+t+s;
  t:=IntToStr(H);
  if length(t)<2 then t:='0'+t;
  s:=t+s;
  result:=s;
end;

function MDateTimeToStr(Dt:TDateTime):string;
begin
  Result:=MDateToStr(Dt)+' '+MTimeToStr(Dt);
end;

function MStrToDate(Dt:string):double;
var i,j,Y,M,D,err:integer;
begin
  result:=0;
  Dt:=trim(Dt);
  if (dt<>'') and (dt[1]='"') then system.delete(dt,1,1);
  if (dt<>'') and (dt[length(dt)]='"') then system.delete(dt,length(dt),1);
  dt:=StringReplace(dt,' /','/',[rfReplaceAll]);
  dt:=StringReplace(dt,'/ ','/',[rfReplaceAll]);
  Dt:=trim(Dt);
  if (Dt='') or (not (dt[1] in ['0'..'9'])) then exit;
  if Pos(' ',dt)>1 then Dt:=system.copy(Dt,1,Pos(' ',dt)-1);
  Y:=1; M:=1; D:=1;
  i:=Pos('/',dt);
  if i>1 then begin
    Val(system.copy(dt,1,i-1),Y,err);
    system.delete(dt,1,i);
    i:=Pos('/',dt);
    if i>1 then begin
      Val(trim(system.copy(dt,1,i-1)),j,err);
      if err=0 then M:=j;
      system.delete(dt,1,i);
    end;
    Val(trim(dt),D,err);
  end else begin
    Val(trim(dt),i,err);
    if err=0 then Y:=i;
  end;
  if M>0 then begin
    if M mod 12=0 then begin
      Y:=Y+(M div 13);
    end else begin
      Y:=Y + (M div 12);
    end;
    M:=(M mod 12); if M=0 then M:=12;
  end else begin
    M:=ABS(M);
    Y:=Y-1-(M div 12); M:=12 -(M mod 12)
  end;
  if Y<1 then begin Y:=1; M:=1; D:=1; end;
  result:=EncodeDate(Y,M,1);
  Result:=Result+d-1;
  i:=trunc(EncodeDate(1,1,1));
  if result<i then result:=i;
end;

function MStrToTime(Dt:string):double;
var i,D,H,M,S,SS,err:integer;
begin
  Dt:=trim(Dt);result:=0;
  if (dt<>'') and (dt[1]='"') then system.delete(dt,1,1);
  if (dt<>'') and (dt[length(dt)]='"') then system.delete(dt,length(dt),1);
  Dt:=trim(Dt);
  dt:=StringReplace(dt,'  ',' ',[rfReplaceAll]);
  dt:=StringReplace(dt,' /','/',[rfReplaceAll]);
  dt:=StringReplace(dt,'/ ','/',[rfReplaceAll]);
  dt:=StringReplace(dt,' :',':',[rfReplaceAll]);
  dt:=StringReplace(dt,': ',':',[rfReplaceAll]);
  dt:=StringReplace(dt,' .','.',[rfReplaceAll]);
  dt:=StringReplace(dt,'. ','.',[rfReplaceAll]);
  if (Pos(' ',dt)>1) then begin
    Dt:=system.copy(Dt,Pos(' ',dt)+1,255);
    Dt:=trim(dt);
  end;
  if (Dt='') or (not (dt[1] in ['-','0'..'9'])) then exit;
  M:=0; S:=0; ss:=0;
  i:=Pos(':',dt);
  if i>1 then begin
    Val(trim(system.copy(dt,1,i-1)),H,err);
    system.delete(dt,1,i);
    i:=Pos(':',dt);
    if i>1 then begin
      Val(trim(system.copy(dt,1,i-1)),M,err);
      system.delete(dt,1,i);
      i:=Pos('.',dt);
      if i>0 then begin
        Val(trim(system.copy(dt,1,i-1)),S,err); //sec
        system.delete(dt,1,i);
        Val(trim(dt),SS,err);   //MSec
      end else begin
        Val(trim(dt),i,err);
        if err=0 then S:=i else S:=0;
      end;
    end else begin
      val(trim(dt),i,err);
      if err=0 then M:=i else M:=0;
    end;
  end else begin
    Val(trim(dt),i,err);
    if err=0 then H:=i else H:=0;
  end;

  D:=0; //day
  if ss>=0 then begin
    S:=S+(ss div 1000); ss:=ss mod 1000;
  end else begin
    ss:=abs(ss);
    s:=s-1-(ss div 1000); ss:=1000-(ss mod 999);
  end;
  if S>=0 then begin
    M:=M+(s div 60); S:=s mod 60;
  end else begin
    S:=abs(S);
    M:=M-1-(s div 60); s:=60-(s mod 59);
  end;
  if M>=0 then begin
    H:=H+(M div 60); M:=M mod 60;
  end else begin
    M:=abs(M);
    H:=H-1-(M div 60); M:=60-(M mod 59);
  end;
  if H>=0 then begin
    D:=D + (H div 24); H:=H mod 24;
  end else begin
    H:=Abs(H);
    D:=D-1-(H div 24); H:=24-(H mod 23);
  end;
  result:=D+frac(EncodeTime(H,M,S,SS))
end;

function MStrToDateTime(Dt:string):double;
VAR D:double;
    H,M,S,ss:word;
begin
  dt:=trim(dt);
  if Pos('/',dt)=0 then begin
    if Pos(':',dt)>0 then begin
      result:=MStrToTime(dt);
    end else result:=MStrToDate(dt);
  end else begin
    result:=MStrToDate(dt);
    if Pos(':',dt)>0 then begin
      d:=MStrToTime(dt);
      IF RESULT<0 THEN BEGIN
        if d<0 then  begin
          DecodeTime(Abs(d),H,M,S,ss);
          H:=23-H; M:=59-M; S:=59-S;
          RESULT:=RESULT + Trunc(d) - 1 -Frac(EncodeTime(H,M,S,999));
        end else
          RESULT:=RESULT+Trunc(d)-Frac(d);
      END ELSE result:=result+D;
    end;
  end;
end;

end.
