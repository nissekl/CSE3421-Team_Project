/* f. Find the buyer who has purchased the most IP Items and the total number of IP Items they have purchased */

SELECT b.*, max(p.Product_id)
FROM ACCOUNT AS a, BUYER AS b, PRODUCT AS p, ORDER_ AS o, HAS AS h
WHERE b.Account_id = a.Account_id, h.Transaction_id = o.Transaction_id AND h.Product_id = p.Product_id
GROUP BY o.Account_id
HAVING count(p.Product_id) = max(p.Product_id)
