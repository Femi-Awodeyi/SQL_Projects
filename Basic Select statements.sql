/* ------------  Meta Data -----------------*/
Exec sp_columns PurchaseOrderHeader

/* --------------- Basic column filtering-----------------*/
----- get all columns -------
select *
from purchasing.PurchaseOrderHeader

--filter by column --------
select VendorID, OrderDate
from purchasing.PurchaseOrderHeader

--filter by column using aliases --------
select VendorID 'Vendor ID', OrderDate AS 'ORDER DATES'
from purchasing.PurchaseOrderHeader


/* --------------- Basic row filtering-----------------*/
--- comparison operators (=, <>, >, <, >=, <=) ---------
select *
from Purchasing.PurchaseOrderHeader
where status = 4

----- conditional operators (Like, IN (menas include), between (goes with and), AS (means alias),)
select top 10 *
from Person.Person
where FirstName like 'Ken'

select top 10 *
from Person.Person
where FirstName IN ('Ken', 'Terri')

----- Get all person information where businessentityId is between 100 and 560
select top 10 *
from Person.Person
where businessentityId BETWEEN 100 and 560


----- logical operators (and, Or, any, all) --------
select top 100 *
from person.Person
where BusinessEntityID > 200 OR PersonType <> 'em'

-------- using wildcards (% (zero or more characters), _ (1 character), [], -, *)-------
select *
from Person.Person
where FirstName like 's%'

select *
from Person.Person
where FirstName like '_s%'