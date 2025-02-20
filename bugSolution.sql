To fix the unpredictability of the `LIMIT` clause, always use it in conjunction with an `ORDER BY` clause. This ensures a consistent order and predictable subset of results.  To prevent SQL injection, use parameterized queries or other techniques to safely incorporate user input into SQL statements.

```sql
-- Correct usage with ORDER BY
SELECT * FROM employees ORDER BY employee_id LIMIT 10;

-- Preventing SQL injection with parameterized query (example varies by database system)
-- Prepared statement (example using placeholders):
PREPARE stmt FROM 'SELECT * FROM products WHERE name LIKE ?';
SET @search = '%search term%';
EXECUTE stmt USING @search;
DEALLOCATE PREPARE stmt;
```

Remember to sanitize or escape user inputs when constructing SQL queries manually (though parameterized queries are highly recommended).  Also note that database-specific functions for escaping strings exist, but parameterized queries are always preferable.