SELECT c.company_name, 
       SUM(CASE WHEN c.outcome = 'successful' THEN 1 ELSE 0 END) AS successful_count,
       SUM(CASE WHEN c.outcome = 'failed' THEN 1 ELSE 0 END) AS failed_count,
       SUM(CASE WHEN c.outcome = 'canceled' THEN 1 ELSE 0 END) AS canceled_count,
       SUM(CASE WHEN c.outcome = 'live' THEN 1 ELSE 0 END) AS live_count
FROM campaign c
GROUP BY c.company_name;


