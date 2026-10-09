CREATE OR REPLACE TABLE `cyclistic.all_trips_raw` AS
SELECT * FROM `cyclistic.trips_202509`
UNION ALL
SELECT * FROM `cyclistic.trips_202510`
UNION ALL
SELECT * FROM `cyclistic.trips_202511`
UNION ALL
SELECT * FROM `cyclistic.trips_202512`
UNION ALL
SELECT * FROM `cyclistic.trips_202601`
UNION ALL
SELECT * FROM `cyclistic.trips_202602`
UNION ALL
SELECT * FROM `cyclistic.trips_202603`
UNION ALL
SELECT * FROM `cyclistic.trips_202604`
UNION ALL
SELECT * FROM `cyclistic.trips_202605`
UNION ALL
SELECT * FROM `cyclistic.trips_202606`
UNION ALL
SELECT * FROM `cyclistic.trips_202607`
UNION ALL
SELECT * FROM `cyclistic.trips_202608`