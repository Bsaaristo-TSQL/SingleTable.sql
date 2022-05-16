
--ASG 10,  #1
  use MyGuitarShop
  select ProductCode, ProductName, ListPrice, DiscountPercent
  from Products
  ORDER BY ListPrice desc

  -- ASG 10,  #2
  use MyGuitarShop
  SELECT  lastname + ', ' + firstname as FullName
  FROM Customers
  where lastname >= 'M' and lastname <> 'Z'
  order by lastname

  --ASG 10,     #3
  use MyGuitarShop
  SELECT ProductName, ListPrice, DateAdded, ProductCode
  from Products
  where listprice >= 500 and listprice <= 2000
  order by dateadded desc

  --ASG 10,    #4
  use MyGuitarShop
  SELECT DiscountPercent / 100 * listprice as [DiscountAmmount]
  ,[ListPrice],[ProductName] 
  ,listprice - discountpercent / 100 * listprice as [DiscountPrice] 
  ,[DiscountPercent]
  FROM Products
  order by discountprice asc

   --ASG 10,     #5

   use MyGuitarShop
   SELECT itemprice * quantity as [PriceTotal]
    ,[ItemID]
    ,[DiscountAmount]
    ,[ItemPrice]
    ,DiscountAmount * quantity as DiscountTotal
    ,[Quantity]
	,ItemPrice - DiscountAmount  * Quantity as ItemTotal
   FROM OrderItems
   where  ItemPrice - DiscountAmount * Quantity >= 300 
   order by itemtotal desc

   --ASG 10,   #6

   use MyGuitarShop
   select OrderID, OrderDate, ShipDate, ShipAmount
   from Orders
   where ShipDate is null

   --ASG 10,   #7

   use MyGuitarShop
   select Price = 100, TaxRate = .07, TaxAmount = 100 * .07, TotalSale = 100 + 7
  
  
