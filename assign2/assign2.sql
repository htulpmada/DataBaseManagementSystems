
--#7.a
SELECT ssn, fname, lname, dno, superssn
FROM Employee left outer join department on dname<>'Research'
WHERE superssn<>888665555 and dno=dnumber;

--#7.b not sure if this counts
SELECT ssn, fname, lname, dno, superssn
FROM Employee left outer join department on dname<>'Research'
WHERE superssn<>888665555 and dno=dnumber;

--#7.c
SELECT ssn, fname, lname, dno, superssn
FROM Employee
WHERE superssn<>888665555  and 
dno not in (select dnumber from department where dname ='Research');

--#7.d



--#8. List the SSN, lname, and hours of all employees (with a dependent) who work <= 10 hours per week on the Computerization project. List each employee only once if 
--they have more than one dependent. 

SELECT ssn, lname, hours, pno
FROM employee, works_on w, project, dependent d
WHERE pno=pnumber and pname = 'Computerization' and d.essn=ssn and w.essn=ssn and hours <= 10
INTERSECT 
SELECT ssn, lname, hours, pno
FROM employee, works_on w, project, dependent d
WHERE pno=pnumber and pname = 'Computerization' and d.essn=ssn and w.essn=ssn and hours <= 10;

--#9.a

SELECT ssn
FROM employee
minus
SELECT ssn
FROM employee, project, works_on
WHERE pno=pnumber and ssn=essn and pname='ProductY';


--#10

SELECT ssn, address
FROM employee, project, works_on
WHERE pno=pnumber and ssn=essn and pname='ProductY'
INTERSECT
SELECT ssn, address
FROM employee, project, works_on
WHERE pno=pnumber and ssn=essn and pname='ProductZ';

--#11

Select count(*) as num_dep
from dependent;

--#12

Select count( distinct ssn ) as cnt
from employee, dependent
where essn=ssn;

--#13
SELECT * 
from 
(SELECT distinct ssn, fname, lname 
from employee, dependent
where essn=ssn) 
e1 join 
(Select ssn
from employee, dependent
where essn=ssn
group by ssn
having count(essn) > 0)
e2 on e1.ssn=e2.ssn;

--#14.a

SELECT * 
from 
(SELECT distinct ssn, fname, lname 
from employee, dependent
) 
e1 left join 
(Select ssn, count(essn)
from employee, dependent
where essn=ssn
group by ssn
having count(essn) > -1)
e2 on e1.ssn=e2.ssn
ORDER BY lname;
