/*d. Provide a list of the IP Item names and associated dollar totals for copies sold to all buyers, 
sorted from the IP Item that has sold the highest dollar amount to the IP Item that has sold the smallest.*/

SELECT      P.name,SUM(qty)*P.price AS total
FROM        PRODUCT AS P, HAS AS H
WHERE       P.Product_id=H.Product_id
GROUP BY    P.product_id
ORDER BY    SUM(H.qty)*P.price DESC;