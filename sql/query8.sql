SELECT first_name,
       TO_CHAR(hire_date, 'DD Month YYYY', 'NLS_DATE_LANGUAGE=AMERICAN')
FROM employees
ORDER BY employee_id;
