SELECT count(*), title
FROM employees e 
INNER JOIN titles t USING (emp_no)
WHERE hire_date > "1994-07-01"
GROUP BY  t.title;

SELECT avg (s.salary), title
FROM salaries s 
INNER JOIN titles t using (emp_no)
GROUP BY title;

SELECT sum(s.salary)
FROM salaries s 
INNER JOIN dept_emp using (emp_no)
INNER JOIN departments d using (dept_no)
WHERE d.dept_name = "Marketing"
AND Year(s.from_date) >= 1990 
AND YEAR (s.to_date) <= 1992;