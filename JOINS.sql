....retrieve the student detail and the employee they are working in
...inner join
select employee.employee_id,employee.name,employee.city,employee.job,employee.salary
from employee inner join student on employee.employee_id = student.employee_id;

...right join
select employee.employee_id,employee.name,employee.city,student.name,student.age
from employee employee right join student student on employee.employee_id = student.employee_id;

......left join
select employee.employee_id,employee.name,employee.city,student.name,student.age
from employee employee left join student student on employee.employee_id = student.employee_id

.....outer join
select employee.employee_id,employee.name,employee.city,student.name,student.age
from employee employee left join student student on employee.employee_id = student.employee_id
union
select employee.employee_id,employee.name,employee.city,student.name,student.age
from employee employee right join student student on employee.employee_id = student.employee_id;