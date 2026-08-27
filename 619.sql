SELECT MAX(num) AS num
FROM MyNumber
WHERE num IN (
    SELECT num
    FROM MyNumber
    GROUP BY num
    HAVING COUNT(*) = 1
);


