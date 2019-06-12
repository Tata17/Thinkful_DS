SELECT 
		neighbourhood, availability_365
FROM 
		sfo_listings
GROUP BY 
		neighbourhood, availability_365
ORDER BY availability_365 ASC