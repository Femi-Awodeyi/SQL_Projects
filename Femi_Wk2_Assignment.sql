/* Q1 Using thew Person.Person table, write a query that outputs the Title, FullName(FirstName and  LastName), 
Modifiedate Where FirstName Starts with D and Last Name starts with R or M Ordering By BusinessEntityId*/

SELECT Title, FirstName AS 'First Name', LastName as 'lastname', ModifiedDate as 'Modified Date', BusinessEntityID
from Person.Person
where FirstName like 'D%' and (LastName like 'R%' or LastName like 'M%')
ORDER by BusinessEntityID


---- Q2 Select all columns from Person.Person Where BusinessEntityId is between 120 and 350------
select *
from person.Person
where BusinessEntityID BETWEEN 120 and 350


----- Q3 Select all columns from Person.Person whose FirstName has a second letter of o------
select *
from Person.Person
where FirstName like '_O%'


--- Q4 Select BusinessEntityId, FirstName, LastName from Person.Person for people who have no  EmailPromotion(0) and have a ModifiedDate year of 2013 -----
SELECT BusinessEntityID, FirstName as 'First Name', LastName as 'Last Name', EmailPromotion, ModifiedDate
from Person.Person
where EmailPromotion = 0 and ModifiedDate = '2013'


/*Q5 Write a query to filter out purchases where what was received was less than what was ordered  and the amount to be refunded. The query should have the following Columns:  
PurchaseOrderDetailId, OrderQty, UnitPrice, ReceivedQty, RefundAmount*/
select purchaseOrderDetailID as 'Purchase Oder Detail ID', OrderQty as 'Order Qty', UnitPrice as 'Unit Price', ReceivedQty as 'Received Qty', [Refund Amount]=(OrderQty-ReceivedQty)*UnitPrice
from Purchasing.PurchaseOrderDetail
where ReceivedQty < OrderQty

