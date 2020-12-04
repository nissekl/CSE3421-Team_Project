/* f. Find the most profitable seller (i.e. the one who has brought in the most money) */
SELECT A2.Name
FROM ACCOUNT1 AS A1, ORDER_ AS ORD1, HAS AS HA1, PRODUCT AS PR1, ACCOUNT1 AS A2
WHERE A1.Account_id = ORD1.Account_id AND ORD1.Transaction_id = HA1.Transaction_id AND HA1.Product_id = PR1.Product_id AND PR1.Account_id = A2.Account_id
GROUP BY PR1.Account_id
HAVING SUM(HA1.QTY*PR1.Price)=
        (SELECT MAX(QT)
        FROM (SELECT SUM(HA.QTY*PR.Price) AS QT
              FROM ACCOUNT1 AS A, ORDER_ AS ORD, HAS AS HA, PRODUCT AS PR
              WHERE A.Account_id = ORD.Account_id AND ORD.Transaction_id = HA.Transaction_id AND HA.Product_id = PR.Product_id
              GROUP BY PR.Account_id));
