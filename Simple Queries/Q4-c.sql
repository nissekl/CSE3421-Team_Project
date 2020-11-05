/*c. Count the number of BB_EMPLOYEE whose name is "John" */

	SELECT	COUNT(b.Employee_id)
	FROM	BB_EMPLOYEE as b
	WHERE   b.Name LIKE 'John%';
