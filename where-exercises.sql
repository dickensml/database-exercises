USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE
        gender = 'M'
        AND
        (first_name = 'Irena'
        OR first_name =  'Vidya'
        OR first_name =  'Maya');

SELECT * FROM employees WHERE last_name lIKE 'E%';
SELECT * FROM employees WHERE last_name lIKE 'E%'
        OR last_name lIKE '%e'    ;
SELECT * FROM employees WHERE last_name lIKE 'E%e';

SELECT * FROM employees WHERE last_name lIKE '%q%'
        AND != 'qu';
