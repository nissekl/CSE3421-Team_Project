/*c. Provide a list of the IP Item names and associated total copies sold to all buyers,
 sorted from the IP Item that has sold the most individual copies to the IP Item that has sold the least.*/

SELECT PR.Name, SUM(HA.QTY)
FROM ACCOUNT AS A, ORDER_ AS ORD, HAS AS HA, PRODUCT AS PR
WHERE A.Account_id = ORD.Account_id AND ORD.Transaction_id = HA.Transaction_id AND HA.Product_id = PR.Product_id
GROUP BY PR.Product_id
ORDER BY SUM(HA.QTY) DESC
