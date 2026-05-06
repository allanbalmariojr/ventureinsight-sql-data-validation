SELECT
    MAX(raised_amount),
    MIN(raised_amount),
    funded_at
FROM
    funding_round
GROUP BY
    funded_at
HAVING
    MIN(raised_amount) != 0
    AND MIN(raised_amount) != MAX(raised_amount)
