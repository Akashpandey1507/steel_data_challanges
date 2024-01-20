-- Active: 1705764979555@@127.0.0.1@3306@financial_analysis
-- Active: 1705764979555@@127.0.0.1@3306@financial_analysis-- Active: 1705764979555@@127.0.0.1@3306@financial_analysis-- Active: 1705764979555@@127.0.0.1@3306@financial_analysis-- Active: 1705764979555@@127.0.0.1@3306@financial_analysis-- Active: 1705764979555@@127.0.0.1@3306@financial_analysis

---  What are the names of all the customers who live in New York?

use financial_analysis;
select * from customers;
select FirstName
from customers
where City = "New York"

--- What is the total number of accounts in the Accounts table?

select * from accounts;

select count(*)
from accounts;


--- What is the total balance of all checking accounts?
select sum(Balance) as CheckingAccountTotal
from accounts


--- What is the total balance of all accounts associated with customers who live in Los Angeles?
select * from accounts;
select * from customers;
select sum(balance) from customers inner JOIN
accounts on customers.CustomerID=accounts.CustomerID where city="Los Angeles";

--- Which branch has the highest average account balance?
select * from accounts;
select * from branches;
select BranchName, AVG(Balance) as Avg_Balance
from accounts inner JOIN branches
on accounts.`BranchID`=branches.`BranchID`
group by BranchName
order by Avg_Balance desc limit 1;


--- Which customer has the highest current balance in their accounts?
select * from customers;
select * from accounts;
select Customers.FirstName, Customers.LastName, max(Accounts.Balance) as balances
from Customers inner join Accounts on Customers.CustomerID=Accounts.CustomerID
group by Customers.CustomerID,Customers.FirstName,Customers.LastName
ORDER by balances DESC limit 1;


--- Which customer has made the most transactions in the Transactions table?