/* d. Give all the buyers who purchased a IP Item by a given seller 
and the names of the IP Items they purchased, seller given by Account_id = ‘S0003’ */

SELECT b.*, p.Name
FROM PRODUCT AS p, BUYER AS b, ORDER_ AS o, HAS AS h, ACCOUNT AS a
WHERE p.Account_id = 'S0003' AND  h.Transaction_id = o.Transaction_id AND o.Account_id = 'B0001' 
    AND h.Product_id = p.Product_id AND b.Account_id = a.Account_id;
