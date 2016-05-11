SELECT name, TotalMag, MonthlyEarnings, cpid
FROM TeamOverview
Where Address IS NULL
AND MonthlyEarnings > 0
ORDER BY MonthlyEarnings DESC;