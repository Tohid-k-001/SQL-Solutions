select name
from SalesPerson
where sales_id not in (
    select s.sales_id
    from SalesPerson as s
    left join Orders as o
        on s.sales_id = o.sales_id
    left join Company as c
        on o.com_id = c.com_id
    where c.name = "RED"
);