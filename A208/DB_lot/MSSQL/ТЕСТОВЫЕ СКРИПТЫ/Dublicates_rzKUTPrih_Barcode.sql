IF OBJECT_ID('tempdb..#tmp') IS NOT NULL drop table #tmp
IF OBJECT_ID('tempdb..#tmp2') IS NOT NULL drop table #tmp2
CREATE TABLE #tmp 
 (
  [KeyName] VARCHAR(255),
  [NREC] [binary](8) NULL,
  [OriginalName] VARCHAR(255) 
 )
CREATE CLUSTERED INDEX DisplayName ON #tmp([KeyName]);

INSERT INTO #tmp ([OriginalName], [KeyName],[NREC])
SELECT MC.F$NAME, P.F$BARCODE as KeyName, P.F$NREC as NREC
FROM T$RZKUTPRIH P
LEFT JOIN T$KATMC MC ON MC.F$NREC = P.F$CMC
WHERE --P.F$BARCODE LIKE '%149660%'
[dbo].[toInt64](p.F$CPODR) = 4611693923140645959
--and [dbo].[toInt64](p.F$COTPED) <> 0
Order by P.F$NREC

SELECT #tmp.KeyName as KeyName, count(#tmp.KeyName) KolDublicates
INTO #tmp2
FROM #tmp 
GROUP BY #tmp.KeyName
HAVING count(#tmp.KeyName)>2;

--SELECT * from #tmp
--SELECT * from #tmp2

SELECT x.nRec as NREC, 
       x2.OriginalName as OriginalName,
	   #tmp2.KeyName ,
	   #tmp2.KolDublicates
	   --, 2 as TypeRec
FROM #tmp2
OUTER APPLY (SELECT min(#tmp.nRec) as nRec FROM #tmp WHERE #tmp.KeyName = #tmp2.KeyName) as x
OUTER APPLY (SELECT #tmp.OriginalName as OriginalName FROM #tmp WHERE #tmp.nRec = x.nRec) as x2

ORDER BY OriginalName