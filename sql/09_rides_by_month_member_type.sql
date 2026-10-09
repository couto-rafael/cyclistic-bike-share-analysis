SELECT  
  month,
  member_casual,
  COUNT(*) AS total_trips
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_clean` 
GROUP BY
  month,
  member_casual
ORDER BY
  month