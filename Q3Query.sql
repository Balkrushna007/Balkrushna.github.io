select C.Cust_id,C.FirstName,C.LastName,C.City,C.Country,C.Phone,O.OrderDate,O.OrderNumber,O.Total_Amount from OrderDetails AS O,Customer AS C where O.Cust_id=C.Cust_id