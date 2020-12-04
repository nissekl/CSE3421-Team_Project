/*b. Count the number of unique products that are sold in a store called “Super Duper”*/

	SELECT	COUNT(p.Product_id)
	FROM	PRODUCT AS p
	WHERE	p.Store_name = 'Super Duper'
