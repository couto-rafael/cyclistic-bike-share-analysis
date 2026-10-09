SELECT  
  start_hour,
  member_casual,
  COUNT(*) AS total_trips,
  ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY member_casual), 1) AS pct_of_group
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_clean`
WHERE
  day_of_week BETWEEN 2 AND 6
GROUP BY
  start_hour,
  member_casual
ORDER BY
  member_casual,
  start_hour