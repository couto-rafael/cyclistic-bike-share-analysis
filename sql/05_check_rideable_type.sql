SELECT  
  rideable_type,
  COUNT(*) AS total_rides,
  COUNTIF(start_station_name IS NULL) AS blank_start_station
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_raw`
GROUP BY rideable_type;
