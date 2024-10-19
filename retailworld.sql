..... Data cleaning


Select *
from retail_sales_dataset;




CREATE TABLE retailworld 
like retail_sales_dataset;

select * FROM retailworld;

Insert retailworld
SELECT * from retail_sales_data
select * FROM retailworld;


SELECT *,
ROW_NUMBER() OVER(PARTITION BY TransactionID,CustomerID,Gender,Age.ProductCategory,Quantity,Priceperunit, TotalAmount,`Date`) AS row_num
FROM retailworld;
