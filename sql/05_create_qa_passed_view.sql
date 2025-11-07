CREATE VIEW IF NOT EXISTS campaign_qa_passed AS
SELECT *
FROM campaign_raw
WHERE qa_flag = 'OK';


