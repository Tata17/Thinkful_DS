SELECT 
		neighbourhood, 
		AVG(CAST(availability_365 AS INTEGER))
FROM 
		sfo_listings
GROUP BY 
		neighbourhood
ORDER BY 2 ASC