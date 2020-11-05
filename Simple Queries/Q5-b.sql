/* b. Provide a list of buyer names and e-mail addresses for buyers who have spent more than the average buyer. */

SELECT      A.Name,A.Email
FROM		ACCOUNT AS A, BUYER AS B, ORDER_ AS O, HAS AS H, PRODUCT AS P
WHERE	    A.Account_id=B.Account_id AND B.Account_id=O.Account_id AND O.Transaction_id = H.Transaction_id AND	P.Product_id=H.Product_id
GROUP BY	A.Name
HAVING      SUM(price)>(SELECT      AVG(price)
                        FROM		ACCOUNT AS A, BUYER AS B, ORDER_ AS O, HAS AS H, PRODUCT AS P
                        WHERE	    A.Account_id=B.Account_id AND B.Account_id=O.Account_id AND 
                                    O.Transaction_id = H.Transaction_id 
                                    AND	P.Product_id=H.Product_id);