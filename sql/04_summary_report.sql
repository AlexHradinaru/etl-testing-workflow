SELECT qa_flag, COUNT(*) AS records
FROM campaign_raw
GROUP BY qa_flag
ORDER BY records DESC;
