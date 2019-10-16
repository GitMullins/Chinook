--brazil_customers_invoices.sql

--Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select FirstName,LastName,InvoiceId,InvoiceDate,BillingCountry
from Customer c
	inner join Invoice i
		on c.CustomerId = i.CustomerId
		where c.Country = 'Brazil'