SELECT
    company.funding_total
FROM
company
WHERE
    company.category_code = 'news' 
    AND company.country_code = 'USA'
ORDER BY 
    company.funding_total DESC;
