SELECT first_name,
       last_name,
       ROUND(salary, -2) sou_arrodonit
FROM employees
ORDER BY sou_arrodonit DESC, last_name, first_name;
