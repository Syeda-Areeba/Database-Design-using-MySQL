USE Question_1;
# ---------------------------- Stores that have made most Revenue -----------------------------------
SELECT S.S_Name,S.S_Location,COUNT(*) as 'No of Purchases',SUM(PD.P_Price*PR.Quantity) as 'Total Revenue'
FROM Retail_Store as S
INNER JOIN Purchase as PR ON PR.Store_Id = S.Store_Id
INNER JOIN Products as PD ON PR.Product_Id = PD.Product_Id 
GROUP BY PR.Store_Id
ORDER BY SUM(PD.P_Price*PR.Quantity) DESC
LIMIT 5;

# ------------- Most selled/bought raw materials along with it's price and quantity sold/bought ---------------
SELECT RM.Mat_Name, RM.Mat_Price AS 'Unit Price' , SUM(S.Quantity) AS 'Total Quantity',
SUM(RM.Mat_Price*S.Quantity) AS 'Total Price'
FROM Raw_Material as RM
INNER JOIN Supply as S ON S.Material_Id = RM.Material_Id
GROUP BY S.Material_Id
ORDER BY SUM(S.Quantity) DESC
LIMIT 5;

# -----------------  orders that are paid through e-payments rather than cash on delivery ------------------
# => those orders that are not delivered but have payment status = 1
SELECT C.C_Name,O.Order_Id FROM Online_Customer AS C
INNER JOIN Orders AS O ON O.Customer_Id = C.Customer_Id
WHERE O.Payment_Status = 1 AND Delivery_Status = 0;

# ----------- Customers who are both online and offline and along with their total orders and purchases ---------
SELECT ONC.Customer_Id, ONC.C_Name, COUNT(DISTINCT O.Order_Id) AS 'Online Orders',
COUNT(DISTINCT P.Product_Id) AS 'In-Store Purchases', 
COUNT(DISTINCT O.Order_Id) + COUNT(DISTINCT P.Product_Id) as "Total Orders & Purchases"
FROM Online_Customer AS ONC
INNER JOIN Orders AS O ON ONC.Customer_Id = O.Customer_Id
INNER JOIN Purchase AS P ON ONC.Customer_Id = P.Customer_Id
GROUP BY ONC.Customer_Id;

# -------------------------- Frequently bought products by all customers -------------------------------
SELECT DISTINCT P.P_Name, SUM(IFNULL(PC.Quantity,0)) AS 'Purchase Quantity', SUM(OP.Quantity) AS 'Order Quantity',
SUM(IFNULL(PC.Quantity,0)) + SUM(OP.Quantity) AS "Total Quantity"
FROM Products AS P
INNER JOIN Order_Products AS OP ON OP.Product_Id = P.Product_Id
INNER JOIN Purchase AS PC ON P.Product_Id = PC.Product_Id
GROUP BY P.Product_Id
ORDER BY SUM(IFNULL(PC.Quantity,0)) + SUM(OP.Quantity) DESC
LIMIT 5;

# ---------------------- Total Salary of all Depts & Number of Employees Working there ------------------------- 
SELECT Emp_Type AS DEPT,COUNT(Emp_Id) AS 'Total Employees',SUM(Emp_Salary) AS 'Total Salary'
FROM Employee AS E
GROUP BY Emp_Type;
