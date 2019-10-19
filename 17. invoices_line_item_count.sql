--invoices_line_item_count.sql:

--Provide a query that shows all Invoices but includes the # of invoice line items.

select i.InvoiceId,
	count(il.InvoiceLineId) as LineItems
		from Invoice i
		left join InvoiceLine il
		on il.InvoiceId = i.InvoiceId
		group by i.InvoiceId
