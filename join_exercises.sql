USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN dept_manager as dm
#               ON de.dept_no = dm.dept_no;

# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# Need to link name to EE number to dept number to dept name...

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
    JOIN dept_manager as dm ON dm.emp_no = e.emp_no
    JOIN departments d on d.dept_no = dm.dept_no

WHERE dm.to_date = '9999-01-01' && e.gender = 'F'

ORDER BY d.dept_name;


SELECT t.title, COUNT(*) AS "Count"
FROM departments d
JOIN dept_emp de on de.dept_no = d.dept_no
JOIN titles t ON t.emp_no = de.emp_no
# WHERE t.to_date > NOW() AND de.to_date > NOW()
WHERE de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;


