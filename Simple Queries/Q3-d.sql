/* d. Give all the buyers who purchased a IP Item by a given seller 
and the names of the IP Items they purchased, seller given by Account_id = ‘S0003’ */

SELECT a.Name
FROM PRODUCT AS p, ORDER_ AS o, HAS AS h, ACCOUNT AS a
WHERE p.Account_id = 'S0003' AND  h.Transaction_id = o.Transaction_id AND o.Account_id = a.Account_id 
    AND h.Product_id = p.Product_id ;
