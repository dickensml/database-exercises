USE employees;

# 1.  find EE 101010 hire_date; use to find all EE with same hire_date


SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no = '101010';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN
        (SELECT hire_date FROM employees
         WHERE emp_no = '101010');
# 2.----------------------------------------------



SELECT  e.emp_no, t.title
FROM employees AS e
    JOIN titles AS t ON t.emp_no = e.emp_no
WHERE e.first_name = 'Aamod';



# 3.------------------------------------------------



SELECT e.first_name, last_name
FROM employees AS e
    JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
WHERE e.gender = 'F' AND dm.to_date > NOW();


# Bonus----------------
SELECT d.dept_name
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date > NOW();


