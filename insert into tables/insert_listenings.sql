INSERT INTO listenings (userID, trackid, cityid, dayid, time, Report_date)
SELECT mt.userID, tr.trackid, ct.cityid, d.dayid, mt.time, mt.Report_date
FROM mirror_tracks mt
INNER JOIN tracks tr ON tr.Report_date = mt.Report_date
INNER JOIN cities ct ON ct.Report_date = mt.Report_date
INNER JOIN days d ON d.Report_date = mt.Report_date
WHERE mt.time IS NOT NULL AND mt.Report_date = (
	SELECT MIN(Report_date) 
	FROM mirror_tracks mt2 
	WHERE mt.userID = mt2.userID
)