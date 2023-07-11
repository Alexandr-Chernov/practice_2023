INSERT INTO cities (city, Report_date) 
SELECT DISTINCT city, Report_date 
FROM mirror_tracks mt1 
WHERE city IS NOT NULL AND Report_date = (
	SELECT MIN(Report_date) 
	FROM mirror_tracks mt2 
	WHERE mt1.userID = mt2.userID
)