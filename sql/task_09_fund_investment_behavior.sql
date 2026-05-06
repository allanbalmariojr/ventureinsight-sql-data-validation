SELECT
   ROUND(AVG(investment_rounds)) AS avg_investment_rounds,
    CASE WHEN invested_companies >= 100 THEN 'high_activity'
     WHEN (invested_companies >= 20 AND invested_companies < 100) THEN 'middle_activity'
     WHEN invested_companies < 20 THEN 'low_activity'
    END AS fund_activity
FROM
fund
GROUP BY
    fund_activity
ORDER BY 
    avg_investment_rounds ASC;
