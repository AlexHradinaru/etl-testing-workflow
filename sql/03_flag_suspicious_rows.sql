ALTER TABLE campaign_raw ADD COLUMN qa_flag TEXT;

UPDATE campaign_raw
SET qa_flag = CASE
    WHEN spend = 0 AND impressions > 0 THEN 'Spend=0 but has impressions'
    WHEN clicks = 0 AND spend > 0 THEN 'Spend>0 but no clicks'
    WHEN conversions > clicks THEN 'Conversions > Clicks'
    WHEN clicks > impressions THEN 'Clicks > Impressions'
    WHEN impressions = 0 AND spend > 0 THEN 'Spend>0 but no impressions'
    ELSE 'OK'
END;
