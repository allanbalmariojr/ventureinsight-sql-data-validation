SELECT
    people.first_name,
    people.last_name,
    people.twitter_username
FROM
    people
WHERE
    people.twitter_username LIKE 'Silver%';
