SELECT  
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(AVG(ride_minutes) , 2) AS average_ride_minutes
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_clean` 
GROUP BY
  member_casual
