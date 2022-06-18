-- question 1
select *
from purchasing.PurchaseOrderHeader

--question 2
select VendorID, OrderDate
from purchasing.PurchaseOrderHeader

--question 3 = incorrect
select status = 4, OrderDate
from purchasing.PurchaseOrderHeader

--question 3, again
select top 10 *
from Purchasing.PurchaseOrderHeader
where status = 4
order by OrderDate 

