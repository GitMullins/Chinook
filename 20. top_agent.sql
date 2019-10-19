--top_agent.sql:

--Which sales agent made the most in sales over all?

select Top 1 (e.EmployeeId) as EmployeeId,
		sum(i.Total) as TotalSales
from Employee e
	inner join Customer c on e.EmployeeId = c.SupportRepId
	inner join Invoice i on c.CustomerId = i.CustomerId
	group by e.EmployeeId
	order by TotalSales DESC