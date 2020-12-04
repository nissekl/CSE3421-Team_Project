/* f. Find the buyer who has purchased the most IP Items and the total number of IP Items they have purchased */

SELECT A.Name,    COUNT(*)
FROM ACCOUNT1 AS A, ORDER_ AS ORD, HAS AS HA, PRODUCT AS PR
WHERE A.Account_id = ORD.Account_id AND ORD.Transaction_id = HA.Transaction_id AND HA.Product_id = PR.Product_id
GROUP BY A.Name
HAVING COUNT(*)=
        (SELECT MAX(BC)
        FROM (SELECT   COUNT(*) AS BC
      	    FROM ACCOUNT1 AS A, ORDER_ AS ORD, HAS AS HA, PRODUCT AS PR
            WHERE A.Account_id = ORD.Account_id AND ORD.Transaction_id = HA.Transaction_id AND HA.Product_id = PR.Product_id
      	    GROUP BY A.Name));
