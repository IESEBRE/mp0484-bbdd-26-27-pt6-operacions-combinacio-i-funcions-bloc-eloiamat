WITH historial AS (
    SELECT employee_id, MIN(ordre) ordre
    FROM (
        SELECT employee_id, ROW_NUMBER() OVER (ORDER BY ROWID) ordre
        FROM job_history
        WHERE MONTHS_BETWEEN(end_date, start_date) > 12
    )
    GROUP BY employee_id
)
SELECT e.employee_id
FROM employees e
LEFT JOIN historial h ON h.employee_id = e.employee_id
WHERE h.employee_id IS NOT NULL
   OR MONTHS_BETWEEN(SYSDATE, e.hire_date) > 12
ORDER BY h.ordre NULLS LAST, e.employee_id;
