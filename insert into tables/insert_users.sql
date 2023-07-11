INSERT INTO users (userID, Report_date) 
SELECT DISTINCT userID, Report_date 
FROM mirror_tracks mt1 
WHERE userID IS NOT NULL AND Report_date = (
	SELECT MIN(Report_date) 
	FROM mirror_tracks mt2 
	WHERE mt1.userID = mt2.userID
)
