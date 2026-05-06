SELECT
    *
FROM
    people
WHERE
    people.twitter_username LIKE '%money%'
    AND people.last_name LIKE '%K%';
