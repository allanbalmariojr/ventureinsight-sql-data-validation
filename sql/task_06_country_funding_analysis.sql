SELECT
    SUM(funding_total) AS total_amount_raised,
    country_code
FROM
    company
GROUP BY
    country_code
ORDER BY
    total_amount_raised DESC;
