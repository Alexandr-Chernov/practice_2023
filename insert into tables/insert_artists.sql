INSERT INTO artists (artist, Report_date) 
SELECT DISTINCT artist, Report_date 
FROM mirror_tracks mt1 
WHERE artist IS NOT NULL AND Report_date = (
	SELECT MIN(Report_date) 
	FROM mirror_tracks mt2 
	WHERE mt1.userID = mt2.userID
)