USE adlist;


# SELECT first_name, last_name, hire_date
# FROM employees
# WHERE emp_no = '101010';
#
# SELECT first_name, last_name, hire_date
# FROM employees
# WHERE hire_date IN
#       (SELECT hire_date FROM employees
#        WHERE emp_no = '101010');

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm ON dm.emp_no = e.emp_no
         JOIN departments d on d.dept_no = dm.dept_no

WHERE dm.to_date = '9999-01-01' && e.gender = 'F'

ORDER BY d.dept_name;

---------------------------------------

SELECT email
FROMgi