--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
select employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex, 
salaries.salary
from employees
join salaries as salaries
on employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.

select department.dept_no, department.deto_name, deptmanager.emp_no, 
employees.first_name, employees.last_name
from department
inner join deptmanager on 
department.dept_no = deptmanager.dept_no
inner join employees on 
deptmanager.emp_no = employees.emp_no;

select * from department;
--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select employees.emp_no,
employees.first_name, employees.last_name, department.deto_name  
from employees
inner join dept_emp on 
employees.emp_no = dept_emp.emp_no
inner join department on 
dept_emp.dept_no = department.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
select first_name, last_name, sex from employees
where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
select employees.emp_no,
employees.first_name, employees.last_name, department.deto_name  
from employees
inner join dept_emp on 
employees.emp_no = dept_emp.emp_no
inner join department on
dept_emp.dept_no = department.dept_no
where deto_name = 'Sales'; 

--List all employees in the Sales and Development departments, 
--including their employee number, 
--last name, first name, and department name.
select employees.emp_no,
employees.first_name, employees.last_name, department.deto_name  
from employees
inner join dept_emp on 
employees.emp_no = dept_emp.emp_no
inner join department on
dept_emp.dept_no = department.dept_no
where deto_name = 'Sales' or deto_name = 'Development'; 

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select * from employees;
select last_name, count(last_name) as "Last Name"
from employees
group by last_name
order by "Last Name" DESC;