SELECT  
  day_of_week,
  member_casual,
  COUNT(*) AS total_trips,
  ROUND(AVG(ride_minutes), 1) AS avg_ride_minutes,
  ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY member_casual), 1) AS pct_of_group,
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_clean`
GROUP BY
  day_of_week,
  member_casual
ORDER BY
  member_casual,
  day_of_week