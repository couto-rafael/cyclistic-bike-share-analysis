SELECT 
  ride_id,
  COUNT(*) AS times_appeared
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_raw`
GROUP BY ride_id
HAVING COUNT(*) >1;