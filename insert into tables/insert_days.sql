INSERT INTO days (day, Report_date) 
SELECT DISTINCT weekday, Report_date 
FROM mirror_tracks mt1 
WHERE weekday IS NOT NULL AND Report_date = (
	SELECT MIN(Report_date) 
	FROM mirror_tracks mt2 
	WHERE mt1.userID = mt2.userID
)