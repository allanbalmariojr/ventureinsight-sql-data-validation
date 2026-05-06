SELECT
   SUM(price_amount) AS totalSum_Acquisitions_USDollars
FROM
    acquisition
WHERE
    acquisition.acquired_at > '2011-01-01'
    AND acquisition.acquired_at < '2013-12-31'
    AND acquisition.term_code = 'cash'
