--sales_agent_customer_count.sql:

--Provide a query that shows the count of customers assigned to each sales agent.

select e.EmployeeId,
		count(c.SupportRepId) as NumberOfCustomers
from Customer c
inner join Employee e on e.EmployeeId = c.SupportRepId
group by e.EmployeeId