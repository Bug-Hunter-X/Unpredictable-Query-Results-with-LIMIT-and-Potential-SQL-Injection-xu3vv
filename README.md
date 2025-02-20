# Unpredictable SQL Query Results and SQL Injection Risks

This repository demonstrates two common SQL issues:

1. **Unpredictable Results with `LIMIT` (or `TOP`):** Using `LIMIT` or `TOP` in a SQL query without an `ORDER BY` clause can lead to unpredictable results because the database system is free to return any arbitrary subset of rows.
2. **SQL Injection Vulnerability with `LIKE`:** Incorrectly using `LIKE` without proper escaping can introduce SQL injection vulnerabilities.

The `bug.sql` file contains examples of these issues, and `bugSolution.sql` demonstrates corrected versions that prioritize consistent and secure results.  The solution uses parameterized queries to prevent SQL injection.