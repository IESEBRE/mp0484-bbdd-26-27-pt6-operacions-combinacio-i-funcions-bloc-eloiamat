SELECT 'sou màxim', MAX(SALARY)
  FROM EMPLOYEES
  UNION
  SELECT 'sou mínim', MIN(SALARY)
  FROM EMPLOYEES
  UNION
  SELECT 'mitjana dels sous', AVG(SALARY)
  FROM EMPLOYEES
  UNION
  SELECT 'suma dels sous dels empleats', SUM(SALARY)
  FROM EMPLOYEES;

