--top_country.sql:

--Which country's customers spent the most?

select Top 1 (BillingCountry),
		sum(i.Total) as TotalSales
from Invoice i
	group by i.BillingCountry
	order by BillingCountry desc