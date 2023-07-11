INSERT INTO genres (genre, Report_date) 
SELECT DISTINCT genre, Report_date 
FROM mirror_tracks mt1 
WHERE genre IS NOT NULL AND Report_date = (
	SELECT MIN(Report_date) 
	FROM mirror_tracks mt2 
	WHERE mt1.userID = mt2.userID
)
