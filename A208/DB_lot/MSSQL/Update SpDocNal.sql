IF OBJECT_ID('tempdb ..#xx$locks')IS NOT NULL drop table #xx$locks create table #xx$locks (TableNRec binary(8))
UPDATE T$SpDocNal SET T$SpDocNal.F$Summa = T$SpDocNal.F$Summa * (SELECT T$rzKutPrih.F$Kol from T$rzKutPrih where T$rzKutPrih.F$nRec = T$SpDocNal.F$CSPDOC)
where (SELECT T$rzKutPrih.F$Kol from T$rzKutPrih where T$rzKutPrih.F$nRec = T$SpDocNal.F$CSPDOC) <> 0 