select AVG(salary)
from employee;

select lname, salary
from EMPLOYEE
where salary > (select AVG(SALARY) from employee);

select lname, salary
from EMPLOYEE e
where salary > (select AVG(SALARY) from employee where dno = e.dno);

select dname, count(*), AVG(salary) 
from employee ,department
where dno = dnumber
group by dname;

select lname, dname, dnumber, salary
from employee, department
where dno=dnumber and salary > 32000;

select dname, dnumber, avg(salary)
from employee, DEPARTMENT
where dno=dnumber
group by dname, dnumber;

select dname, dnumber, avg(salary)
from employee, DEPARTMENT
where dno=dnumber
group by dname, dnumber
having avg(salary) >32000;

