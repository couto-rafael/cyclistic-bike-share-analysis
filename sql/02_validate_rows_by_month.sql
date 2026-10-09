SELECT
  FORMAT_TIMESTAMP('%Y-%m', started_at) AS month,
  COUNT(*) AS rides
FROM `cyclistic.all_trips_raw`
GROUP BY month
ORDER BY month;