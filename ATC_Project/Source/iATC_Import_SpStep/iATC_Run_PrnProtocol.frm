.LinkForm 'Prn_Protocol_dlv' Prototype is 'PRBDOC'
.Group '���ॢ訥 ��� (�।����� �த��)'
.Group '���ॢ訥 ��� (�த���)'
.Group '��� ��ᮯ��짮��⥫�'
.NameInList '!��⮪�� ᮣ��ᮢ���� 業 (��-�)'
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
         message('�� �⮬� �� ��������� �� �������! ��楤�� �ନ஢���� ��⮪��� ᮣ��ᮢ���� 業 ��ࢠ��.');
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
.Group '�������� �� �த���'
.NameInList '!��⮪�� ᮣ��ᮢ���� 業 (��-�)'
.Declare
.EndDeclare
.DEFP PA4
.DEFO PORTRAIT
.F 'NUL'
.Create view v1 from katsopr where (( ���������_�४ == KatSopr.nRec));
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
        message('�� �⮬� �� ��������� �� �������! ��楤�� �ନ஢���� ��⮪��� ᮣ��ᮢ���� 業 ��ࢠ��.');
     }
  Prn_Protocol_dlv.FExit
end.
.endform


