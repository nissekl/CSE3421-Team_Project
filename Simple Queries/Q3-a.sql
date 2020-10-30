/* a. Find the titles of all IP Items by a given Seller that cost less than $10 
(you choose how to designate the seller, seller is given by Account_id='S0001') */

SELECT p.Name
FROM PRODUCT AS p
WHERE p.Account_id = 'S0001' AND p.Price < 10;
