--top_2009_agent.sql:

--Which sales agent made the most in sales in 2009? HINT: TOP

select Top 1 (e.EmployeeId) as EmployeeId,
		sum(case
		when InvoiceDate between '01/01/2009' and '12/31/2009'
		then i.Total
		else 0
		end) as sales2009
from Employee e
	inner join Customer c on e.EmployeeId = c.SupportRepId
	inner join Invoice i on c.CustomerId = i.CustomerId
	group by e.EmployeeId
	order by sales2009 DESC