UPDATE campaign_raw
SET spend = 0
WHERE spend IS NULL;

UPDATE campaign_raw
SET impressions = 0
WHERE impressions IS NULL;

UPDATE campaign_raw
SET clicks = 0
WHERE clicks IS NULL;

UPDATE campaign_raw
SET conversions = 0
WHERE conversions IS NULL;
