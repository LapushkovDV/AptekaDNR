.LinkForm 'REESTRRZ_PL_31012024' Prototype is ReestrRZ
.NameInList 'Zdravica: ������ ᢮������ ஧����� 業 �� ����������� + �ࠩ�-���� +31/01/2024'
.p 43
.var
  NomPp:Double
  sum1:Double
  sum2:Double
  sum3:Double
  sum4:Double
  klass:Double
  block:String
  proiz:String
  RZena:Double
  R1:String
  cPL:Comp
  cAttr:Comp
  oAttr:Comp
  bAttr:Comp
  cNrec:Comp
  MCPLPrice:Double
  ProcMCPLPrice:Double
  DeltaPL:Double
  SummaPL:Double
  SumPay:Double
  TotPay:Double
  GranPrice:String
  OptPrice:String
  Ukr:String
  _EdIzm:string;
.endvar
.Create view vi_Kat select maxrn,barkod,cEd from katmc where ((���_��1==katmc.barkod));
.Create view vi_Ed select name from kated where ((vi_Kat.katmc.cEd == KatEd.nRec));

.Create view vi_Gr select name,kod from groupmc where ((���_��㯯�_��1==groupmc.kod));
.Create view vi_Attr_Price select crec,vstring,cattrnam,wtable from attrval;
.Create view vi_PL select price from prices;
.fields
  CommonFormHeader
  DateToStr(���_���室������, 'DD/MM/YYYY �.')
  �࣠������
  �����_���������
  DateToStr(���_���������, 'DD/MM/YYYY �.')
  ���⠢騪
  NomPp
  ��������_��1
  klass
  block
//  ��_����७��1
  _EdIzm
  ������⢮_�ᥣ�_䠪��᪮�1
  業�_��ࢠ�
  業�_��⭠�
  ProcMCPLPrice
  MCPLPrice
  100*(業�_஧��筠�/業�_��⭠� - 1)
  RZena
  業�_஧��筠�
  業�_��⭠�*������⢮_�ᥣ�_䠪��᪮�1
  SumPay
  proiz
  GranPrice
  100*(業�_��⭠�/業�_��ࢠ�-1)
  OptPrice
  �㬬�_�室_���1/������⢮_�ᥣ�_䠪��᪮�1-(����_��⭠�-業�_��ࢠ�)
  �㬬�_�室_���1
  �⠢��_������_���1
  proiz
  GranPrice
  100*(業�_��⭠�/業�_��ࢠ�-1)
  OptPrice
�㬬�_�室_���1/������⢮_�ᥣ�_䠪��᪮�1-(����_��⭠�-業�_��ࢠ�)
�㬬�_�室_���1
  �⠢��_������_���1
  sum4
  sum1
  TotPay
  sum3
.endfields
.begin
  cPL     := 4001DA5C3726A8D8h
  cAttr   := 40019E4B5C5A2247h
  oAttr   := 40013E30562EEFB0h
  bAttr   := 400110F57225D826h
  NomPp := 0
  sum1  := 0
  sum2  := 0
  sum3  := 0
  sum4  := 0
  TotPay:= 0
  RZena := 0
  R1 := ''
  SummaPL := 0
  if vi_PL.getfirst prices where ((cPL == prices.cKlPrice)) <> 0
     message(
     ''#3+'!!! �������� !!!'#13+
     ''#3+'�� ������ �ࠩ�-���� � 業��� ��� POS-�ନ�����',0);
end.

.{

^

��                                            ��AKT��

   ������� �� �᭮����� �ਪ��� N�46 �� 01.12.2023�.
   ��^�� �� ^
   ��⠢���:

                                          ����������
         ᢮������ ஧����� 業 �� �����������, ����祭�� �� ��������� N� ��^�� �� ��^��
         ���⠢騪 ��^��
.{
.[h OVERWRITE
===============================��==============��============================================================================================
 N �   ������������ ⮢�� ������᪳������    ��� ���-�� ����� ����   ����  ������������     ������������     �����     � �㬬�   �  �㬬�
�/��                       �  ���  ������.     ��� ������ ���� ��� � �������.��% �-���ࠩየ�Ⳣ%    ��������������������� ������� � �������
===============================��==============��============================+================+==============================================
.]h
.begin
   NomPp :=NomPp + 1
   sum1 := sum1+業�_��⭠�*������⢮_�ᥣ�_䠪��᪮�1
   sum2 := sum2+業�_஧��筠�*������⢮_�ᥣ�_䠪��᪮�1
   sum3 := sum3+�㬬�_�室_���1
   sum4 := sum4+業�_��ࢠ�*������⢮_�ᥣ�_䠪��᪮�1
   klass := 0
   MCPLPrice := 0
   DeltaPL := 0
   if vi_Kat.getfirst katmc where ((���_��1==barkod))=0
   {  klass:=vi_Kat.katmc.POLZAK;
      if vi_PL.getfirst prices where ((cPL==prices.cklprice and vi_Kat.katmc.nRec==prices.cThing)) = 0
      {  MCPLPrice := vi_PL.prices.Price;
         DeltaPL   := MCPLPrice*������⢮_�ᥣ�_䠪��᪮�1-����_��⭠�*������⢮_�ᥣ�_䠪��᪮�1;
      }
      if vi_Ed.getfirst kated where ((vi_Kat.katmc.cEd == KatEd.nRec)) = 0
         {
           _EdIzm := vi_Ed.kated.name;
         }
   };
   RZena := 0
   R1 := ''

   if (klass=11)
     { if (業�_��ࢠ�)<(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)<=100 and (100*((業�_��⭠�/1.1)/(業�_��ࢠ�)-1))<=15
      RZena := (((業�_��ࢠ�)*0.25)+(業�_��⭠�)/1.1)*1.1;

     if (業�_��ࢠ�)<(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)>100 and (業�_��ࢠ�)<=500 and (100*((業�_��⭠�/1.1)/(業�_��ࢠ�)-1))<=12
      RZena := (((業�_��ࢠ�)*0.20)+(業�_��⭠�)/1.1)*1.1;

     if (業�_��ࢠ�)<(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)>500 and (100*((業�_��⭠�/1.1)/(業�_��ࢠ�)-1))<=9
      RZena := (((業�_��ࢠ�)*0.13)+(業�_��⭠�)/1.1)*1.1;

     if (業�_��ࢠ�)<(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)<=100 and (100*((業�_��⭠�/1.1)/(業�_��ࢠ�)-1))>15
      RZena := (((業�_��ࢠ�)*(1.4-(業�_��⭠�/1.1)/(業�_��ࢠ�)))+(業�_��⭠�/1.1))*1.1;

     if (業�_��ࢠ�)<(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)>100 and (業�_��ࢠ�)<=500 and (100*((業�_��⭠�/1.1)/(業�_��ࢠ�)-1))>12
      RZena := (((業�_��ࢠ�)*(1.32-(業�_��⭠�/1.1)/(業�_��ࢠ�)))+(業�_��⭠�/1.1))*1.1;

     if (業�_��ࢠ�)<(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)>500 and (100*((業�_��⭠�/1.1)/(業�_��ࢠ�)-1))>9
      RZena := (((業�_��ࢠ�)*(1.22-(業�_��⭠�/1.1)/(業�_��ࢠ�)))+(業�_��⭠�/1.1))*1.1;



      if (業�_��ࢠ�)>(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)<=100
      RZena := (((業�_��⭠�/1.1)*0.25)+(業�_��⭠�)/1.1)*1.1;

     if (業�_��ࢠ�)>(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)>100 and (業�_��ࢠ�)<=500
      RZena := (((業�_��⭠�/1.1)*0.20)+(業�_��⭠�)/1.1)*1.1;

     if (業�_��ࢠ�)>(業�_��⭠�/1.1) and �⠢��_������_���1= 10 and (業�_��ࢠ�)>500
     RZena := (((業�_��⭠�/1.1)*0.13)+(業�_��⭠�)/1.1)*1.1;
   };



   if (klass=88) or (klass=99)
   { if �⠢��_������_���1= 10
      RZena := (業�_��ࢠ�*1.23)*1.1;
     if �⠢��_������_���1= 20
      RZena := (業�_��ࢠ�*1.23)*1.2;
   };
if  (klass=40)
   { if �⠢��_������_���1= 10
      RZena := (業�_��ࢠ�*1.2)*1.1;
     if �⠢��_������_���1= 20
      RZena := (業�_��ࢠ�*1.2)*1.2;
   };

  if (klass=45) or (klass=55)
   { if �⠢��_������_���1= 10
      RZena := (業�_��ࢠ�*1.5)*1.1;
     if �⠢��_������_���1= 20
      RZena := (業�_��ࢠ�*1.5)*1.2;
   };
     if (klass=44)
   { if �⠢��_������_���1= 10
      RZena := (業�_��ࢠ�*1.25)*1.1;
     if �⠢��_������_���1= 20
      RZena := (業�_��ࢠ�*1.25)*1.2;
   };


   if 業�_��ࢠ�<=11 R1 := '1';
   if MCPLPrice = 0   then ProcMCPLPrice := 0 else ProcMCPLPrice := 100*(MCPLPrice/業�_��⭠� - 1);
   if MCPLPrice = 0   then SumPay := 業�_஧��筠�*������⢮_�ᥣ�_䠪��᪮�1 else SumPay := 業�_஧��筠�*������⢮_�ᥣ�_䠪��᪮�1;
   SummaPL := SummaPL+DeltaPL;
   TotPay  := TotPay +SumPay;

   GranPrice := ''
   if vi_Kat.getfirst katmc where ((���_��1==barkod)) = 0
   {
      if vi_Attr_Price.getfirst attrval where ((1411==attrval.wtable and vi_Kat.katmc.nRec==attrval.cRec and cAttr==attrval.cattrnam)) = 0
          {
          GranPrice :=DoubleToStr(Double(vi_Attr_Price.attrval.vstring)*1.177,'6666.9999');
          }
   };

 OptPrice := ''

   if vi_Kat.getfirst katmc where ((���_��1==barkod)) = 0
   {
      if vi_Attr_Price.getfirst attrval where ((1411==attrval.wtable and vi_Kat.katmc.nRec==attrval.cRec and oAttr==attrval.cattrnam)) = 0
          {
          OptPrice := '/'+DoubleToStr(Double(vi_Attr_Price.attrval.vstring)*1.177,'6666.9999')+'/';
          }
   };
   block := ''

   if vi_Kat.getfirst katmc where ((���_��1==barkod)) = 0
   {
      if vi_Attr_Price.getfirst attrval where ((1411==attrval.wtable and vi_Kat.katmc.nRec==attrval.cRec and bAttr==attrval.cattrnam)) = 0
                   {
                   block := (vi_Attr_Price.attrval.vstring);
                   }
    };

end.
&&& @@@@@@@@@@@@@@@@@@@@@@@ @@ ��@@�� @@@@@@@@@@@�� &#&&&.&& &#&&&.&& &#&&&&.&&|&#&.&& ��&#&&&&.&&��|&#&.&& ��&#&&&&.&&�� ��&#&&&&.&&�� &#&&&&.&& &#&&&&.&&
.begin
  proiz := ''
  if vi_Gr.getfirst groupmc where ((���_��㯯�_��1==kod))=0 proiz:=vi_Gr.groupmc.name;
  Ukr:=''
  if pos('(���)',proiz)<>0
      Ukr := '��ࠨ��';
end.
.{?internal;(Ukr='')
    ��@@@@@@@@@@@@@@@@@@@@@@@@@@ ��@@@@@@@@@@@   ��        �� ��&&.&&�� @@@@@@@@@@@@�� |��&&.&& ��          |                           &#&&&&.&& &#&&&&.&&
.}
.{?internal;(Ukr<>'')
    ��@@@@@@@@@@@@@@@@@@@@@@@@@@ ��@@@@@@@@@@@ ��           &&.&&�� @@@@@@@@@@@@�� |��&&.&& ��          |                           &#&&&&.&& &#&&&&.&&
.}
.}
===============================��===============��===========================================================================================
                                                                �������:    &#&&&&.&&                                &#&&&&.&& &#&&&&.&&��
��  ���� � ⠪�஢�� �஢�ਫ:____________________ ����⮢� �.�. (���祢�� �.�.)                                       ��&#&&&&.&&��
              ����� �����ᨨ ____________________ ���筠� �.�.
                             ____________________ �����設� �.�. (��ᥢ� �.�.)
.{
.}
.{
.}
.{
.}
.}
.endform
