/* g. Provide a list of buyer names for buyers who purchased anything listed by the most profitable Seller. */

SELECT a.name 
FROM ACCOUNT1 AS a, BUYER AS b, HAS AS h, ORDER_ AS O, (SELECT PR1.Account_id, PR1.Product_id
                                                                    FROM ACCOUNT1 AS A1, ORDER_ AS ORD1, HAS AS HA1, PRODUCT AS PR1
                                                                    WHERE A1.Account_id = ORD1.Account_id AND ORD1.Transaction_id = HA1.Transaction_id AND HA1.Product_id = PR1.Product_id
                                                                    GROUP BY PR1.Account_id
                                                                    HAVING SUM(HA1.QTY*PR1.Price)=
                                                                      (SELECT MAX(QT)
                                                                      FROM (SELECT SUM(HA.QTY*PR.Price) AS QT
                                                                            FROM ACCOUNT1 AS A, ORDER_ AS ORD, HAS AS HA, PRODUCT AS PR
                                                                            WHERE A.Account_id = ORD.Account_id AND ORD.Transaction_id = HA.Transaction_id AND HA.Product_id = PR.Product_id
                                                                            GROUP BY PR.Account_id)) ) AS p
                                                                                                

WHERE p.Product_id = h.Product_id AND o.Transaction_id = h.Transaction_id AND o.Account_id = b.Account_id AND b.Account_id = a.Account_id;                                                                                     
