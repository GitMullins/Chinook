--sales_agent_total_sales.sql:

--Provide a query that shows total sales made by each sales agent.

select e.EmployeeId as EmployeeId,
		sum(i.Total) as TotalSales
from Employee e
	inner join Customer c on e.EmployeeId = c.SupportRepId
	inner join Invoice i on c.CustomerId = i.CustomerId
	group by e.EmployeeId