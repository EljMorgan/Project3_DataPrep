create database if not exists Sales_Project3;
use Sales_Project3;

select Category, round(sum(Sales)) as Total_Sales, round(sum(Profit)) as Total_Profit
from sales_project3.sales_clean
group by Category
order by Total_Profit desc;

select Segment,  count(Sales) as All_Sales
From sales_project3.sales_clean
group by Segment 
order by count(Sales) desc;

select City, Region, round(sum(Sales)) as Total_Sales
From sales_project3.sales_clean
group by Region, City
order by Total_Sales desc limit 15;




