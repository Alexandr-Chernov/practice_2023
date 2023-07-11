INSERT INTO performances (trackid, artistid, Report_date) 
SELECT DISTINCT trackid, artistid, ar.Report_date 
FROM artists ar
INNER JOIN tracks tr ON tr.Report_date = ar.Report_date