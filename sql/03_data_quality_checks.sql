SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT ride_id) AS unique_ride_ids,
  COUNTIF(start_station_name IS NULL) AS blank_start_station_name,
  COUNTIF(member_casual IS NULL) AS blank_member_casual
FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_raw`