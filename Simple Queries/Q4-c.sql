/*c. Count the number of BB_EMPLOYEE whose name is "John" */

	SELECT	COUNT(*)
	FROM	BB_EMPLOYEE
	WHERE   Name LIKE ‘John%’;