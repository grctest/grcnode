SELECT name, TotalMag_All, MonthlyEarnings_All, cpid
FROM TeamOverview
Where Address IS NULL
AND MonthlyEarnings_All > 0
ORDER BY MonthlyEarnings_All DESC;