--country_invoices.sql: 

--Provide a query that shows the # of invoices per country. HINT: GROUP BY

select i.BillingCountry,
	count(i.InvoiceId) as NumberOfInvoices
from Invoice i
group by i.BillingCountry