-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select categoryName, productName from category
join product
on category.Id = product.categoryId;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select id, orderDate, companyname from [order]
join shipper
on [order].ShipVia = shipper.id
where [order].orderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select productName, quantity from orderDetail
join product
on orderDetail.ProductId = product.Id
where orderDetail.OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select id, companyName, LastName from [order]
join customer
on [order].CustomerId = customer.Id
join employee
on [order].EmployeeId = employee.Id;
