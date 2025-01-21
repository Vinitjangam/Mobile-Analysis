use vinit;
select * from mobile;
-- check mobile features and price list--
select phone_name,price from mobile;
-- find out the price of 5 most expensive phones--
select * from mobile
order by price desc
limit 5;
-- find out the price of most cheapest phones--
select * from mobile
order by price asc
limit 5;
-- list of top 5 samsung phones with price and all features --
select * from mobile where brands="samsung"
order by price desc
limit 5;
-- must have android phone list then top 5 high price android phones--
select * from mobile where Operating_System_Type="Android"
order by price desc
limit 5;
-- must have android phone list thent top 5 lower price android phones--
select * from mobile where Operating_System_Type="Android"
order by price asc
limit 5;
-- must have ios phone listr then top 5 high price ios phones--
select * from mobile where Operating_System_Type="IOS"
order by price desc
limit 5;
-- must have ios phone listr then top 5 lower price ios phones--
select * from mobile where Operating_System_Type="IOS"
order by price asc
limit 5;
-- write a query which phone support 5g and also top 5 phone with 5g support--
select * from mobile where 5G_Availability="Yes"
order by price desc
limit 5;
-- total price of all mobile is to be found with brand name --
select brands,sum(price) from mobile group by brands;


