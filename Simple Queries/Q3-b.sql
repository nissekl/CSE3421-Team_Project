/* b. Give all the titles and their dates of purchase made by given buyer 
(you choose how to designate the buyer, buyer is given by Account_id='B0001') */

SELECT p.Name, o.Date_of_order
FROM PRODUCT AS p, ORDER_ AS o, HAS AS h
WHERE h.Transaction_id = o.Transaction_id AND o.Account_id = 'B0001' AND h.Product_id = p.Product_id; 
