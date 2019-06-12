WITH rainy as (
SELECT 
		DATE(date) 
FROM weather
WHERE events = 'Rain'
GROUP BY 1
)
SELECT t.trip_id,
		t.duration,
		DATE(t.start_date)
FROM trips t
JOIN rainy r
on DATE(t.start_date) = r.date
ORDER BY duration DESC
LIMIT 3