/* e. Find the most popular Seller (i.e. the one who has sold the most IP Items)*/
SELECT PR1.Name
FROM ACCOUNT AS A1, ORDER_ AS ORD1, HAS AS HA1, PRODUCT AS PR1
WHERE A1.Account_id = ORD1.Account_id AND ORD1.Transaction_id = HA1.Transaction_id AND HA1.Product_id = PR1.Product_id
GROUP BY PR1.Account_id
HAVING SUM(HA1.QTY)=
        (SELECT MAX(QT)
        FROM (SELECT SUM(HA.QTY) AS QT
              FROM ACCOUNT AS A, ORDER_ AS ORD, HAS AS HA, PRODUCT AS PR
              WHERE A.Account_id = ORD.Account_id AND ORD.Transaction_id = HA.Transaction_id AND HA.Product_id = PR.Product_id
              GROUP BY PR.Account_id));