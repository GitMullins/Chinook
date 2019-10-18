--invoice_37_line_item_count.sql: 

--Looking at the InvoiceLine table, provide a query that COUNTs 
--the number of line items for Invoice ID 37.

select
sum(case
	when InvoiceId = 35
	then 1
	else 0
	end) as NumberOfLines
from InvoiceLine
