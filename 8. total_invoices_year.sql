--total_invoices_year.sql

--How many Invoices were there in 2009 and 2011?

--select
--sum(case
--	when InvoiceDate between '01/01/2009' and '12/31/2009'
--	or InvoiceDate between '01/01/2011' and '12/31/2011'
--	then 1
--	else 0
--	end) as NumberOfInvoices
--from Invoice


select year(InvoiceDate) as YearOfInvoices,
		count(*) as NumberOfInvoices
from Invoice
where Year(InvoiceDate) in (2009,2011)
group by year(InvoiceDate)
order by YearOfInvoices