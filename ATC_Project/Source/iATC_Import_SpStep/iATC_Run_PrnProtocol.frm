.LinkForm 'Prn_Protocol_dlv' Prototype is 'PRBDOC'
.Group 'Устаревшие формы (предоплата продаж)'
.Group 'Устаревшие формы (продажа)'
.Group 'Счет лесопользователя'
.NameInList '!Протокол согласования цен (ДЛ-В)'
.F 'NUL'
.Create view v1 from StepDoc, KatSopr where
((
    BaseDocNrec  == StepDoc.cBaseDoc
and StepDoc.nRec == KatSopr.cStepdoc
));
.{
.{CheckEnter ISBASEFIN
.}
.{CheckEnter ISEXCLASS
.}
.{CheckEnter ISGROUP
.}
.{
.}
.if DELIMITER
.else
.end
.}

.begin
  if  v1.getfirst StepDoc = tsOK and v1.getfirst KatSopr = tsOK then
      {
        RunInterface('ATC::iATC_PrnProtocol',v1.KatSopr.nRec);
      } else
      {
         message('По этому ДО накладная не найдена! Процедура формирования протокола согласования цен прервана.');
      }
  Prn_Protocol_dlv.FExit
end.

.endform

!============================================================================================================
!============================================================================================================
!============================================================================================================
!============================================================================================================
!============================================================================================================

.LinkForm 'Prn_Protocol_dlv' Prototype is 'TOVN'
.Group 'Накладные на продажу'
.NameInList '!Протокол согласования цен (ДЛ-В)'
.Declare
.EndDeclare
.DEFP PA4
.DEFO PORTRAIT
.F 'NUL'
.Create view v1 from katsopr where (( накладная_нрек == KatSopr.nRec));
.{
.if TOVN01
.else
.end
.if TOVN02
.else
.end
.{
.}
.{CheckEnter TOVNUSL
.}
.{
.}
.}
.begin
  if v1.getfirst KatSopr = tsOK then
     {
       RunInterface('ATC::iATC_PrnProtocol',v1.KatSopr.nRec);
     } else
     {
        message('По этому ДО накладная не найдена! Процедура формирования протокола согласования цен прервана.');
     }
  Prn_Protocol_dlv.FExit
end.
.endform


