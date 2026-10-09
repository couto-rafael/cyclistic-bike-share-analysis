SELECT  
  start_station_name,
  COUNT(*) AS total_trips,
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_clean`
WHERE
  day_of_week BETWEEN 2 AND 6 AND member_casual = 'casual' AND start_hour IN (7,8,9) AND start_station_name IS NOT NULL
GROUP BY
  start_station_name
ORDER BY
  total_trips DESC
LIMIT 10