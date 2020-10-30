/*b. Count the number of unique products that are sold in a store called “Super Duper”*/

	SELECT	COUNT(*)
	FROM	PRODUCT
	WHERE	Store_name = ‘Super Duper’