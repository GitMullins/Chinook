--total_sales_year.sql

--What are the respective total sales for each of those years?

select
sum(case
	when InvoiceDate between '01/01/2009' and '12/31/2009'
	then Invoice.Total
	else 0
	end) as sales2009,
sum(case
	when InvoiceDate between '01/01/2011' and '12/31/2011'
	then Invoice.Total
	else 0
	end) as sales2011
from Invoice
