SELECT * FROM [USERS]         -- пользователи, что такое 2 последних пол€?
SELECT * FROM [USER_TERM]     -- терминалы дл€ пользователей

SELECT * FROM [RATE]          -- это что-то типа каталога курсов валют?
SELECT * FROM [Rate_Term]     -- это типа прив€зка валюты к терминалу?
SELECT * FROM [RATE_USER]     -- св€зка системного пользовател€ windows с терминалом? 

--=================================================================
DECLARE @txt  nvarchar(255) = 'rocs'	-- ‘рагмент наименовани€ товаров
DECLARE @plid int = 9
--=================================================================
/*
declare @name nvarchar(256) = 'user'
declare @no int = 9
set nocount on
select UT_NO, UT_PWD, U_NAME 
  from USER_TERM inner join USERS on USER_TERM.U_ID=USERS.U_ID
where T_ID=@no and U_NAME=@name
*/
/*
declare @S_user nvarchar(50)
set @S_user= SYSTEM_USER
select 'Ќастройки:',  @S_user as S_user
*/


DECLARE @pat NVARCHAR(255)
SELECT @pat = N'%' + UPPER(@txt) + N'%' -- вхождение
declare @rcourse float
declare @S_user nvarchar(50)
declare @t_id int
declare @rid int

set @t_id = CASE WHEN (SELECT t_id FROM rate_user WHERE S_U = @S_user) IS NULL
                       THEN 2
                       ELSE (SELECT t_id FROM rate_user WHERE S_U = @S_user)
                      END
select @rid = R_ID from Rate_Term where T_id=@t_id
select @rcourse = R_COURSE from RATE where R_ID = @rid 

--declare @course float select @course=R_COURSE from RATE where R_ID=2

--select 'Ќастройки:',  @S_user as S_user, @t_id as t_id, @rcourse as  rCourse


--============================
-- поиск, определение цены, остатка и т.д.
--============================
SELECT 
          TR.A_ID
        , TR.P_NAME		
-- ѕолучить цену на товар по прайс-листу или по артикулу
        , P_PRICE = 
                CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
                 THEN a.P_PRICE/@rcourse*1.0
                 ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)/@rcourse*1.0
                END
        , TR.Q
        , TR.M_NAME + ' ' + ISNULL (MD.MD_NAME,'') AS m_name                
        , TR.QR
        , TR.P_SIZEX
        , TR.P_INFO + '/' + (case when p.p_disc=0

	then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
                 THEN a.P_PRICE-a.P_PRICE*7/100
                 ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)*7/100
                END AS varchar)
	else ''
	end ) + '/' + (case when p.p_disc=0

	then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
                 THEN a.P_PRICE-a.P_PRICE*5/100
                 ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)*5/100
                END AS varchar)
	else ''
	end )
        , TR.P_REMMC
FROM
(
        select top 501 a.A_ID, 
                --p.P_NAME, 
                (CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END) AS p_name, 
                a.P_PRICE, Q=sum(J_QTYU), M_NAME, QR=sum(J_RES), 
                p.p_sizex, 
                p_info = cast (p.p_volume as varchar) + '(' + cast(p.p_min as varchar) + ';' + cast(p.p_max as varchar)+')(' + cast(p.p_tnved as varchar)+ ')'+cast(p.p_disc as varchar), 
                p.p_remmc /* это три новых пол€ */

        from JOURNAL j right join ARTICLES a on j.A_ID=a.A_ID
              inner join PRODUCTS p on p.P_ID=a.P_ID
              inner join MANUFACTURERS m on p.M_ID=m.M_ID
              
        where upper(P_NAME) like @pat
        group by a.A_ID, p.P_NAME, a.P_PRICE, m.M_NAME, p.p_sizex, p.p_volume, p.p_min, p.p_max, p.p_tnved, p.p_remmc, p.p_disc,p.p_sklad
) TR
INNER JOIN ARTICLES a ON a.A_ID = TR.A_ID
INNER JOIN PRODUCTS p ON p.P_ID = a.P_ID
left join MANUFACTURERS_DOP md on P.MD_ID=md.MD_ID
ORDER BY TR.P_NAME, TR.p_price DESC
