SELECT 
    SUM(CASE WHEN spend IS NULL THEN 1 ELSE 0 END) AS missing_spend,
    SUM(CASE WHEN impressions IS NULL THEN 1 ELSE 0 END) AS missing_impressions,
    SUM(CASE WHEN clicks IS NULL THEN 1 ELSE 0 END) AS missing_clicks,
    SUM(CASE WHEN conversions IS NULL THEN 1 ELSE 0 END) AS missing_conversions
FROM campaign_raw;

