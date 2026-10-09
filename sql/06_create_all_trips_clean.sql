CREATE OR REPLACE TABLE `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_clean` AS 
SELECT DISTINCT
  -- colunas originais que vamos usar
  ride_id,
  rideable_type,
  member_casual,
  started_at,
  ended_at,
  start_station_name,
  end_station_name,
  start_lat, start_lng, end_lat, end_lng,

  -- colunas novas (o equivalente às colunas que você criou no Excel)
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_sec,
  ROUND(TIMESTAMP_DIFF(ended_at, started_at, SECOND) /60 ) AS ride_minutes,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
  EXTRACT(HOUR FROM started_at) AS start_hour,
  FORMAT_TIMESTAMP('%Y-%m', started_at) AS month

FROM `project-41803cbf-8216-4676-9e2.cyclistic.all_trips_raw`
WHERE started_at >= '2025-09-01'
  AND started_at < '2026-09-01'
  AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) >= 60
  AND TIMESTAMP_DIFF(ended_at, started_at, SECOND) <  43200;
