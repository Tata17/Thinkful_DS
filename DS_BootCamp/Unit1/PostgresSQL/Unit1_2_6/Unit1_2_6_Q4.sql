SELECT
   sfo_calendar.calender_date,
   AVG(CAST(sfo_listings.availability_365 AS INTEGER)), MAX(sfo_listings.availability_365), MIN(sfo_listings.availability_365)
   
FROM
   sfo_listings
INNER JOIN sfo_reviews ON sfo_reviews.id = sfo_listings.id
INNER JOIN sfo_calendar ON sfo_reviews.listing_id = sfo_calendar.listing_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10