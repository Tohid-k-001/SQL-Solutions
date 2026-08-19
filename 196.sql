
DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;

# second solution

delete
from Person
where id not in (
    select id from (
        select min(id)
        from Person
        group by email
    ) as t
);
