/*a. Provide a list of buyer names, along with the total dollar amount each buyer has spent. */

	SELECT	A.Name, SUM (P.Price)
	FROM		ACCOUNT AS A, BUYER AS B, ORDER_ AS O, HAS AS H, PRODUCT AS P
	WHERE	A.Account_id=B.Account_id AND B.Account_id=O.Account_id
			AND O.Transaction_id = H.Transaction_id AND P.Product_id=H.Produc_id 
	
	GROUP BY	A.Name;