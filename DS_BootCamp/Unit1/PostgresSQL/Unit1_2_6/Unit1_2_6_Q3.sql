SELECT
   sfo_calendar.calender_date,
   AVG(sfo_listings.price), MAX(sfo_listings.price), MIN(sfo_listings.price)
   
FROM
   sfo_listings
INNER JOIN sfo_reviews ON sfo_reviews.id = sfo_listings.id
INNER JOIN sfo_calendar ON sfo_reviews.listing_id = sfo_calendar.listing_id
GROUP BY 1
ORDER BY 2 ASC
LIMIT 10