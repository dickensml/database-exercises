USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN dept_manager as dm
#               ON de.dept_no = dm.dept_no;

# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# Need to link name to EE number to dept number to dept name...

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
    JOIN dept_manager as dm ON dm.emp_no = e.emp_no
    JOIN departments d on d.dept_no = dm.dept_no

WHERE dm.to_date = '9999-01-01'

ORDER BY d.dept_name;


