�
 TDEMOFORM 0�,  TPF0	TDemoFormDemoFormLeft� Top� BorderIconsbiSystemMenu
biMinimize BorderStylebsSingleCaptionProgram interpreterClientHeightAClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	Icon.Data
�             �     (       @         �                        �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� �� ��    ��w|���  ��    ��ww����� �������w|����  ������ww��� ����    ��|�w   ��    ��ww�w    ��  ��wwww� �  ��  ��ww|w|� �  �����ww�w����� �����w|�|�������������������������������� ���������w�w � ���  ���w�w �  ��    ��ww�w �  ���  �|ww�w �  ���  �|ww�w �  ��    ��ww�w � ���  ���w�w � ���������w�w��������������������������������� �����w|�|�� �  �����ww�w�� �  ��  ��ww|w|    ��  ��wwww   ��    ��ww�w ����    ��|�w��  ������ww������ �������w|����  ��    ��ww���� ��    ��w|�                                                                                                                                OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreatePixelsPerInchx
TextHeight TLabelLabel1Left
TopWidthFHeightCaptionExpression:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel2LeftTop@Width?HeightCaption
Variables:  TLabelLabel4LeftTop:WidthHeightCaptionHelpFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TLabelLabel3LeftTopWidth� HeightCaptionjan.tungli@seznam.czColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.Style ParentColor
ParentFont  TLabelLabel5Left�TopWidthmHeightCaptionwww.tsoft.szm.comColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.Style ParentColor
ParentFont  TLabelLabel6Left Top@WidthvHeightCaptionProgram interpreter:  TButtonCalcBtnLeftXTop Width� HeightCaptionShow calculated resultFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder OnClickCalcBtnClick  TMemoVarsLeftTopXWidthHeight� Font.CharsetEASTEUROPE_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Lines.Stringsa=1b=0	s="hello"v="AZ"f1=[ sin(x)+5 ]f2=[ s || t ]x=100.2y=200t="xyz" 
ParentFont
ScrollBarsssBothTabOrderWordWrap  	TComboBox	ComboBox1LeftTop WidthIHeightDropDownCount
ItemHeightTabOrderTextx+y^2
OnKeyPressComboBox1KeyPressItems.Stringsx+y^2sin(a)+cos(b)datetimenowStrToStamp(date)StampToStr(StrToStamp(date))StampToStr(StrToStamp(now))Day("2001/2/1")WeekDay(now)   Upper("Anб")"alfa" || sReplace("alfa" ,"fa","xyz")"alfa" > Upper("alfa") "www.tsoft.szm.com" Like "%szm%")"jan.tungli@seznam.cz" Wildcard "*@*.?z" Eval("2+y+x")copy("1234567",3,3)copyTo("1234567",3,6)copy(copy("1234567",3,3),2,2)insert("123456","alfa",3)MinVal(1,2,3,4,0,-5,2)MaxVal(1,2,3,4,0,7+2,2)SumVal(1,2,3,4,0,7,2)AvgVal(1,2,3,4,0,7,2)NumBase(100,2)BaseNum(NumBase(100,2),2)NumBase(255,16)
IFF(a,x,y)
IFF(b,s,v).MaxVal(1,sin(3.14/2)+3+(7-1)+1,MaxVal(1,10),5)Eval(f1)Eval(f2)s:=s || " hello";  s || vnew:="I am  new value" ;  newExistVar("x")"alfa" in ["a","beta","alfa"]123 in [1,2,3,"123"]123 in [1,2,123.0,5]/StampToStr(StrToStamp("1999/12/31 24:0:0.000"))-StampToStr(StrToStamp("2000/1/2 25:0:0.000"))"StampToStr(StrToStamp("2000/0/1"))"StampToStr(StrToStamp("2000/1/0"))#StampToStr(StrToStamp("2000/1/-1"))&StampToStr(StrToStamp("12:01:02.000"))!LastDay(StrToStamp("2000/02/01"))!LastDay(StrToStamp("2001/02/01")):DeltaDays:=StrToStamp("2000/1/1") - StrToStamp("1999/1/1") 0StampToStr(StrToStamp("1999/12/31 24:20:0.000"))1StampToStr(StrToStamp("1999/12/31 -24:20:0.000"))2StampToStr(StrToStamp("1999/12/31 -24:-20:0.000"))-StampToStr(StrToStamp("9/12/31 24:20:0.000")).StampToStr(StrToStamp("9/12/31 24:-20:0.000"))/StampToStr(StrToStamp("9/12/31 -24:-20:0.000"))           TMemoMemo1LeftTopPWidth	Height� ColorclNavyFont.CharsetEASTEUROPE_CHARSET
Font.ColorclYellowFont.Height�	Font.NameCourier New
Font.Style Lines.StringsI    _____________________________________________________________________J   | Basic operations:                                                   |J   |=====================================================================|J   |   numeric:         x + y , x - y , x * y, x / y, x ^ y              |J   |   compare:         x > y, x < y, x >= y, x <= y, x = y, x <> y      |J   |   ansi compare:    s > t, s < t, s >= t, s <= t, s = t, s <> t      |J   |   boolean (1/0):   a AND b,  a OR b,  NOT(a)                        |J   |   boolean (1/0):    x in [...]  // example: 12 in [22,12,3]         |J   |   set variable :    x:=formula (or value) ;                         |J   |   destroy variable: FreeVar(s);    // s=variable name               |J   |   logical:          ExistVar(s)  // s=variable name                 |J   |_____________________________________________________________________| I    _____________________________________________________________________J   | Type conversion:                                                    |J   |=====================================================================|J   |   boolean (1/0):   Logic(x)                                         |J   |   numeric:         Numeric(s)                                       |J   |   string:          String(x)                                        |J   |   char:            Char(x)                                          |J   |   integer:         Ascii(s)                                         |J   |   all types:       Eval(f)   // where f string is formula in [...]  |J   |   string :         NumBase(x,base) // base from <2..16>             |<   |   integer:         BaseNum(s,base) // base from <2..16>J   |_____________________________________________________________________| I    _____________________________________________________________________J   | Math operations:                                                    |J   |=====================================================================|J   |  numeric (integer): x Div y,  x Mod y                               |J   |_____________________________________________________________________| I    _____________________________________________________________________J   | Math functions:                                                     |J   |=====================================================================|J   |    Abs(x), Frac(x), Trunc(x), Heaviside(x) or H(x), Sign(x),        |J   |    Sqrt(x), Ln(x), Exp(x),                                          |J   |    Cos(x), CTg(x), Ch(x), CTh(x), Sin(x),  Sh(x), Tg(x), Th(x),     |J   |    ArcSin(x), ArcCos(x), ArcTg(x), ArcCtg(x),                       |J   |    MaxVal(x [,y, ...]),  MinVal(x [,y, ...]),                       |J   |    SumVal(x [,y,...]),   AvgVal(x [,y, ...])                        |J   |_____________________________________________________________________| I    _____________________________________________________________________J   | String operations:                                                  |J   |=====================================================================|J   |    s || t ,                                                         |J   |    s Like t,      // (%,_)                                          |J   |    s Wildcard t   // (*,?)                                          |J   |_____________________________________________________________________| I    _____________________________________________________________________J   | String functions:                                                   |J   |=====================================================================|J   |   integer: Length(s), Pos(t,s)                                      |J   |   string:  Trim(s), TrimLeft(s), TrimRight(s), Upper(s), Lower(s),  |J   |            Copy(s,x,[y]), CopyTo(s,x,[y]), Delete(s,x,[y]),         |J   |            Insert(s,t,x),                                           |J   |            Replace(s,t,v,[1/0=ReplaceAll,[1/0=IgnoreCase]] ),       |J   |            IFF(a,s,t);    //IF a>=1 then Result:=s else Result:=t   |J   |   numeric: Eval(s)                                                  |J   |_____________________________________________________________________| I    _____________________________________________________________________J   | Date & Time functions:                                              |J   |=====================================================================|J   |   integer: Year(s), Month(s), Day(s), WeekDay(s),                   |J   |            Hour(s), Minute(s), Sec(s)                               |J   |   numeric: StrToStamp(d)                                            |J   |   string:  StampToStr(x), StampToDateStr(x), StampToTimeStr(x)      |J   |_____________________________________________________________________|    I    _____________________________________________________________________J   |  Interpreter,  key words & syntax:                                  |J   |=====================================================================|J   |       IF ...   THEN { ... } [ELSE { ...}]                           |J   |       WHILE ... DO { ... }                                          |J   |       PROCEDURE <ProcedureName> { ... }                             |J   |       EXEC <ProcedureName>                                          |J   |       BREAK                                                         |J   |       CONTINUE                                                      |J   |       EXIT                                                          |J   |       BEEP                                                          |J   |       END.  //program end                                           |J   |       /* note */                                                    |J   |---------------------------------------------------------------------|J   |    Notice: all variables are global varaibles                       |J   |_____________________________________________________________________| 
ParentFontReadOnly	
ScrollBars
ssVerticalTabOrderWordWrap  TMemoMemo2LeftTopXWidth�Height� Font.CharsetEASTEUROPE_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style Lines.Strings4/************* PROGRAM INTERPRETER ****************/d2:=now;x:=10; y:=100;  z:=0;WHILE x<120 DO {  EXEC Next_x;  IF x<50 THEN { y:=x }   ELSE   {
    z:=x; $    IF x<=70 THEN {t:=x} ELSE {r:=x}  }  IF x>90 THEN { BREAK}}d3:=now; BEEP; END.    /* ritaul program end */ PROCEDURE Next_x{ x:=x+1; EXIT; x:=0;}   
ParentFont
ScrollBarsssBothTabOrder  TButtonButton1Left�Top0WidthqHeightCaptionRun programFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnClickButton1Click   