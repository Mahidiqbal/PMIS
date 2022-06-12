
SELECT
  TransferID,Unit_Served1, DATEDIFF(day, From_Date1, To_Date1) AS date_difference, DATEDIFF(day, From_Date1, To_Date1) + 1 AS days_inclusive
FROM tbl_Transfer ORDER BY date_difference DESC

select * from tbl_User 
select convert(varchar, getdate(), 23) as today
select *, DATEDIFF(day, EnrollDate, '2022-06-12') AS date_difference from tbl_User ORDER BY date_difference DESC