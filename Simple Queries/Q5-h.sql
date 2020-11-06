/*h. Provide the list of sellers who listed the IP Items purchased by the buyers who have spent more than the average buyer.*/

SELECT SELLER(*)
FROM PRODUCT AS p, SELLER AS s, HAS AS h, ORDER_ AS O, (SELECT 		BUYER(*)
                                                        FROM		ACCOUNT AS A, BUYER AS B, ORDER_ AS O, HAS AS H, PRODUCT AS P
                                                        WHERE		A.Account_id=B.Account_id AND B.Account_id=O.Account_id AND O.Transaction_id = H.Transaction_id AND	P.Product_id=H.Product_id
                                                        GROUP BY 	A.account_id
                                                        HAVING 		SUM(H.Qty*P.Price)>(SELECT 	SUM(H.Qty*P.Price)/COUNT(DISTINCT A.Account_id)
                                                                                        FROM	ACCOUNT AS A, BUYER AS B, ORDER_ AS O, HAS AS H, PRODUCT AS P
                                                                                        WHERE	A.Account_id=B.Account_id AND B.Account_id=O.Account_id AND 
                                                                                                O.Transaction_id = H.Transaction_id AND	P.Product_id=H.Product_id)) as b
WHERE p.Product_id = h.Product_id AND o.Transaction_id = h.Transaction_id AND o.Account_id = b.Account_id AND p.Account_id = s.Account_id;                                                                                      
