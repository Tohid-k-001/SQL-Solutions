with rankedemployees as(
    select 
        d.name as Department, 
        e.name as Employee , 
        e.Salary,
        rank() over (
            partition by d.name 
            order by e.Salary desc
        ) as 'Rnk'
    from Employee as e
    join Department as d
        on e.departmentId = d.id
)
select 
    Department,
    Employee,
    Salary
from rankedemployees
where Rnk=1;