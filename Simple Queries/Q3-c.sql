/* c. Find the seller names for all sellers with less than 5 IP Items for sale */
SELECT a.Name
FROM PRODUCT AS p, ACCOUNT AS a, SELLER AS s
WHERE s.Account_id = a.Account_id AND p.Account_id = a.Account_id
GROUP BY s.Account_id
HAVING count(p.*) < 5;
