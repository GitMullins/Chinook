--sales_per_country.sql:

--Provide a query that shows the total sales per country.


select BillingCountry,
		sum(i.Total) as TotalSales
from Invoice i
	group by i.BillingCountry