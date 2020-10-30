/* e. Find the total number of IP Items purchased by a single buyer 
(you choose how to designate the buyer, buyer given by account_id=’B0004’) */

SELECT COUNT(p.Product_id)
FROM PRODUCT AS p, ORDER_ AS o, HAS AS h
WHERE h.Transaction_id = o.Transaction_id AND o.Account_id = 'B0003' AND h.Product_id = p.Product_id; 
