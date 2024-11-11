SELECT region, COUNT(customerid) as TotalCustomers FROM CustomerData where region = 'EAST'
SELECT region, COUNT(customerid) as TotalCustomers FROM CustomerData where region = 'WEST'

SELECT region, COUNT(customerid) as Totalcustomers FROM CustomerData GROUP by region

----------2. Most Popular Subscription Type by the Number of Customers----------
SELECT subscriptiontype, COUNT(customerid) as TotalCustomers FROM CustomerData GROUP by subscriptiontype order by TotalCustomers DESC LIMIT 1;

----------3. Customers Who Cancelled their Subscription within 6months--------
SELECT customerid, customername,subscriptiontype, duration as SubscriptionDuration FROM CustomerData WHERE canceled = 'TRUE' and duration <=180;

----------4. Average subscription Duration for all Customers--------------
SELECT avg(duration) as AverageDuration_of_Subscribers FROM CustomerData

-----------5. Subcribers Longer than 12months----------------
SELECT customerid, customername,subscriptiontype, duration as subscriberLongerThan12Months FROM CustomerData where canceled = 'FALSE' and duration >=366;

-----------6. Total Revenue by Subscription Type-----------
SELECT subscriptiontype, SUM(revenue) as Totalrevenue FROM by subscriptiontype

-----------7. Top 3 Regions by Subscription cancellation-----------
SELECT region, COUNT(customerid) as TotalCancellation FROM CustomerData where canceled = 'TRUE' GROUP by region order by TotalCancellation DESC LIMIT 3;

-----------8.Total Number of Active and Canceled Subscribers------------
SELECT canceled, COUNT(customerid) as T0talCustomers FROM CustomerData GROUP by canceled;