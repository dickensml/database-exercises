USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN
      (SELECT emp_no
        FROM dept_manager
)
LIMIT 10;


SELECT emp_no
FROM dept_manager dm
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
    AND to_date > NOW()
    );


# male vs female salary comparison; year over year comparison

SELECT  female_salary, male_salary, year, (male_salary-female_salary) as difference from (
              SELECT e.gender,
                       avg(salary)                                     as female_salary,
                       year(s.from_date)                               as year,

                       (SELECT avg(salary)
                        from employees e2
                                 JOIN salaries s2 ON e2.emp_no = s2.emp_no
                        WHERE gender = 'M'
                          AND year(s2.from_date) = year(s2.from_date)) as male_salary

                FROM employees e
                         JOIN salaries s ON e.emp_no = s.emp_no
                WHERE gender = 'F'
                GROUP BY gender, year, male_salary
        ) as tempTable;