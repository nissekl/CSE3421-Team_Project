/*a. List all the Sellers (Seller_id) and the number of stores for each seller*/

    SELECT	Account_id, COUNT(*)
	FROM		OPEN
	GROUP BY	Account_id;