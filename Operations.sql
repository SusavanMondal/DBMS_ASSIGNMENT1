-- 3.Retrieve Orders for a Specific Customer (Use JOIN to display the customer’s name, product name, order date, and quantity).--

select c.firstname, c.lastname, o.orderdate,od.Quantity, p.name from customer c  --customer’s name, product name, order date, and quantity
join orders o
on c.CustomerID=o.CustomerID --JOIN BASED ON CustomerID
join orderdetails od
on od.orderid=o.orderid --JOIN BASED ON orderid
join product p
on od.productid=p.productid; --JOIN BASED ON productid


-- 4.Find the Most Purchased Product using aggregation functions--




select  p.name AS PRODUCT_NAME, sum(od.quantity) as quantity -- product name, Quantity
from Product p
join  
orderdetails od
on p.productid=od.productid --JOIN BASED ON productid
group by P.Name --group by product name 
order by quantity desc  --set in descending order
limit 1; -- maximum one value


-- 5. Update the Stock Quantity of a product after an order is placed --

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, ShippingAddress)
VALUES (7,4,Current_date, 7500,'pune');  --adding data on order table
INSERT INTO OrderDetails(OrderDetailID,OrderID,ProductID,Quantity,UnitPrice)
VALUES(11,7,2,1,7500);  --adding data on OrderDetails table


update product set stockquantity=stockquantity-1
where ProductID=2;  --updating Stock quantity
 
select Name,stockquantity from  product
where ProductID=2;




---- 6. Delete a Customer’s Record (Ensure referential integrity is maintained).--
select * from customer;

DELETE FROM Customer where Customerid=8; --DELETE THE CUSTOMER HAVING ID 8


select * from customer;




