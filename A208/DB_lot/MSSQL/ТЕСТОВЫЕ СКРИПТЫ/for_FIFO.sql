/*
declare @party_1 bigint = 4612202563712557146
declare @party_2 bigint = 4612223417335912277
select @party_1- @party_2
*/

select
--min([dbo].[toInt64](F$NREC))

--ROW_NUMBER() OVER(ORDER BY F$CREATEDATETIME, F$nrec ASC) AS Row#,
[dbo].[toInt64](F$NREC), F$NAME, *

from T$KATPARTY 
where 
   [dbo].[toInt64](F$NREC) = 4612075545322483097-- 2
or [dbo].[toInt64](F$NREC) = 4612208815578145293-- 3
or [dbo].[toInt64](F$NREC) = 4612058120059823589-- 1
--order by Row#
ORDER BY F$CREATEDATETIME, T$KATPARTY.F$NREC