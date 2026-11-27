SELECT UPPER(first_name || ' ' || last_name),
       LENGTH(first_name || ' ' || last_name)
FROM employees
ORDER BY employee_id;
