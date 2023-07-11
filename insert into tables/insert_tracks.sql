INSERT INTO tracks (track, genreid, Report_date) 
SELECT DISTINCT track, genreid, mt1.Report_date 
FROM mirror_tracks mt1
INNER JOIN genres ON genres.report_date = mt1.Report_date
WHERE mt1.genre IS NOT NULL AND mt1.Report_date = (
	SELECT MIN(Report_date) 
	FROM mirror_tracks mt2 
	WHERE mt1.userID = mt2.userID
)