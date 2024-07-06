.LinkForm 'REESTRRZ_PL_31012024' Prototype is ReestrRZ
.NameInList 'Zdravica: Реестр свободных розничных цен на медикаменты + Прайс-лист +31/01/2024'
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
.Create view vi_Kat select maxrn,barkod,cEd from katmc where ((Код_МЦ1==katmc.barkod));
.Create view vi_Ed select name from kated where ((vi_Kat.katmc.cEd == KatEd.nRec));

.Create view vi_Gr select name,kod from groupmc where ((Код_группы_МЦ1==groupmc.kod));
.Create view vi_Attr_Price select crec,vstring,cattrnam,wtable from attrval;
.Create view vi_PL select price from prices;
.fields
  CommonFormHeader
  DateToStr(Дата_оприходования, 'DD/MM/YYYY г.')
  Организация
  Номер_накладной
  DateToStr(Дата_накладной, 'DD/MM/YYYY г.')
  Поставщик
  NomPp
  Название_МЦ1
  klass
  block
//  ед_измерения1
  _EdIzm
  Количество_всего_фактическое1
  цена_первая
  цена_учетная
  ProcMCPLPrice
  MCPLPrice
  100*(цена_розничная/цена_учетная - 1)
  RZena
  цена_розничная
  цена_учетная*Количество_всего_фактическое1
  SumPay
  proiz
  GranPrice
  100*(цена_учетная/цена_первая-1)
  OptPrice
  сумма_вход_НДС1/Количество_всего_фактическое1-(Цена_учетная-цена_первая)
  сумма_вход_НДС1
  Ставка_налога_НДС1
  proiz
  GranPrice
  100*(цена_учетная/цена_первая-1)
  OptPrice
сумма_вход_НДС1/Количество_всего_фактическое1-(Цена_учетная-цена_первая)
сумма_вход_НДС1
  Ставка_налога_НДС1
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
     ''#3+'!!! Внимание !!!'#13+
     ''#3+'Не найден прайс-лист с ценами для POS-терминалов',0);
end.

.{

^

 Р                                             СAKT С

   Комиссия на основании приказа N°46 от 01.12.2023г.
    Д^ Д по ^
   составлен:

                                           СРЕЕСТР С
         свободных розничных цен на медикаменты, полученные по накладной N°  Б^ Б от  Б^ Б
         поставщик  Б^ Б
.{
.[h OVERWRITE
=============================== И============== И============================================================================================
 N │   Наименование товара │ЦК│ Иск│Единица     И│ Кол-во │Цена Зак│   Цена  │надбав│Цена     │надбав│Цена     │Цена     │ Сумма   │  Сумма
п/п│                       │  │ И  │измер.      И│ ТОВАРА │без НДС │ ПОСТАВЩ.│в% п-л│ПрайсЛист│в%    │РАСЧЕТНАЯ│РОЗНИЧНАЯ│ ЗАКУПКИ │ ПРОДАЖИ
=============================== И============== И============================+================+==============================================
.]h
.begin
   NomPp :=NomPp + 1
   sum1 := sum1+цена_учетная*Количество_всего_фактическое1
   sum2 := sum2+цена_розничная*Количество_всего_фактическое1
   sum3 := sum3+сумма_вход_НДС1
   sum4 := sum4+цена_первая*Количество_всего_фактическое1
   klass := 0
   MCPLPrice := 0
   DeltaPL := 0
   if vi_Kat.getfirst katmc where ((Код_МЦ1==barkod))=0
   {  klass:=vi_Kat.katmc.POLZAK;
      if vi_PL.getfirst prices where ((cPL==prices.cklprice and vi_Kat.katmc.nRec==prices.cThing)) = 0
      {  MCPLPrice := vi_PL.prices.Price;
         DeltaPL   := MCPLPrice*Количество_всего_фактическое1-Цена_учетная*Количество_всего_фактическое1;
      }
      if vi_Ed.getfirst kated where ((vi_Kat.katmc.cEd == KatEd.nRec)) = 0
         {
           _EdIzm := vi_Ed.kated.name;
         }
   };
   RZena := 0
   R1 := ''

   if (klass=11)
     { if (цена_первая)<(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)<=100 and (100*((цена_учетная/1.1)/(цена_первая)-1))<=15
      RZena := (((цена_первая)*0.25)+(цена_учетная)/1.1)*1.1;

     if (цена_первая)<(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)>100 and (цена_первая)<=500 and (100*((цена_учетная/1.1)/(цена_первая)-1))<=12
      RZena := (((цена_первая)*0.20)+(цена_учетная)/1.1)*1.1;

     if (цена_первая)<(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)>500 and (100*((цена_учетная/1.1)/(цена_первая)-1))<=9
      RZena := (((цена_первая)*0.13)+(цена_учетная)/1.1)*1.1;

     if (цена_первая)<(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)<=100 and (100*((цена_учетная/1.1)/(цена_первая)-1))>15
      RZena := (((цена_первая)*(1.4-(цена_учетная/1.1)/(цена_первая)))+(цена_учетная/1.1))*1.1;

     if (цена_первая)<(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)>100 and (цена_первая)<=500 and (100*((цена_учетная/1.1)/(цена_первая)-1))>12
      RZena := (((цена_первая)*(1.32-(цена_учетная/1.1)/(цена_первая)))+(цена_учетная/1.1))*1.1;

     if (цена_первая)<(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)>500 and (100*((цена_учетная/1.1)/(цена_первая)-1))>9
      RZena := (((цена_первая)*(1.22-(цена_учетная/1.1)/(цена_первая)))+(цена_учетная/1.1))*1.1;



      if (цена_первая)>(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)<=100
      RZena := (((цена_учетная/1.1)*0.25)+(цена_учетная)/1.1)*1.1;

     if (цена_первая)>(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)>100 and (цена_первая)<=500
      RZena := (((цена_учетная/1.1)*0.20)+(цена_учетная)/1.1)*1.1;

     if (цена_первая)>(цена_учетная/1.1) and Ставка_налога_НДС1= 10 and (цена_первая)>500
     RZena := (((цена_учетная/1.1)*0.13)+(цена_учетная)/1.1)*1.1;
   };



   if (klass=88) or (klass=99)
   { if Ставка_налога_НДС1= 10
      RZena := (цена_первая*1.23)*1.1;
     if Ставка_налога_НДС1= 20
      RZena := (цена_первая*1.23)*1.2;
   };
if  (klass=40)
   { if Ставка_налога_НДС1= 10
      RZena := (цена_первая*1.2)*1.1;
     if Ставка_налога_НДС1= 20
      RZena := (цена_первая*1.2)*1.2;
   };

  if (klass=45) or (klass=55)
   { if Ставка_налога_НДС1= 10
      RZena := (цена_первая*1.5)*1.1;
     if Ставка_налога_НДС1= 20
      RZena := (цена_первая*1.5)*1.2;
   };
     if (klass=44)
   { if Ставка_налога_НДС1= 10
      RZena := (цена_первая*1.25)*1.1;
     if Ставка_налога_НДС1= 20
      RZena := (цена_первая*1.25)*1.2;
   };


   if цена_первая<=11 R1 := '1';
   if MCPLPrice = 0   then ProcMCPLPrice := 0 else ProcMCPLPrice := 100*(MCPLPrice/цена_учетная - 1);
   if MCPLPrice = 0   then SumPay := цена_розничная*Количество_всего_фактическое1 else SumPay := цена_розничная*Количество_всего_фактическое1;
   SummaPL := SummaPL+DeltaPL;
   TotPay  := TotPay +SumPay;

   GranPrice := ''
   if vi_Kat.getfirst katmc where ((Код_МЦ1==barkod)) = 0
   {
      if vi_Attr_Price.getfirst attrval where ((1411==attrval.wtable and vi_Kat.katmc.nRec==attrval.cRec and cAttr==attrval.cattrnam)) = 0
          {
          GranPrice :=DoubleToStr(Double(vi_Attr_Price.attrval.vstring)*1.177,'6666.9999');
          }
   };

 OptPrice := ''

   if vi_Kat.getfirst katmc where ((Код_МЦ1==barkod)) = 0
   {
      if vi_Attr_Price.getfirst attrval where ((1411==attrval.wtable and vi_Kat.katmc.nRec==attrval.cRec and oAttr==attrval.cattrnam)) = 0
          {
          OptPrice := '/'+DoubleToStr(Double(vi_Attr_Price.attrval.vstring)*1.177,'6666.9999')+'/';
          }
   };
   block := ''

   if vi_Kat.getfirst katmc where ((Код_МЦ1==barkod)) = 0
   {
      if vi_Attr_Price.getfirst attrval where ((1411==attrval.wtable and vi_Kat.katmc.nRec==attrval.cRec and bAttr==attrval.cattrnam)) = 0
                   {
                   block := (vi_Attr_Price.attrval.vstring);
                   }
    };

end.
&&& @@@@@@@@@@@@@@@@@@@@@@@ @@  Л@@ Г @@@@@@@@@@@ И &#&&&.&& &#&&&.&& &#&&&&.&&|&#&.&&  Б&#&&&&.&& Б|&#&.&&  Б&#&&&&.&& Б  Б&#&&&&.&& Б &#&&&&.&& &#&&&&.&&
.begin
  proiz := ''
  if vi_Gr.getfirst groupmc where ((Код_группы_МЦ1==kod))=0 proiz:=vi_Gr.groupmc.name;
  Ukr:=''
  if pos('(УКР)',proiz)<>0
      Ukr := 'Украина';
end.
.{?internal;(Ukr='')
     В@@@@@@@@@@@@@@@@@@@@@@@@@@  В@@@@@@@@@@@    Б         Б  Б&&.&& Й @@@@@@@@@@@@ И | Б&&.&&  Б          |                           &#&&&&.&& &#&&&&.&&
.}
.{?internal;(Ukr<>'')
     Г@@@@@@@@@@@@@@@@@@@@@@@@@@  Г@@@@@@@@@@@  Б           &&.&& Й @@@@@@@@@@@@ И | Б&&.&&  Б          |                           &#&&&&.&& &#&&&&.&&
.}
.}
=============================== И=============== И===========================================================================================
                                                                 БИТОГО:    &#&&&&.&&                                &#&&&&.&& &#&&&&.&& С
 Р  Цены и таксировку проверил:____________________ Фонотова А.В. (Корчевая О.И.)                                        Б&#&&&&.&& Б
              Члены комиссии ____________________ Заречная Е.С.
                             ____________________ Павлишина Л.К. (Рысева И.С.)
.{
.}
.{
.}
.{
.}
.}
.endform
