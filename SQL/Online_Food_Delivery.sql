create database Food;
use Food;
create database food_delivery;
select * from food_delivery;

-- maximum age ordering online 
select Occupation,avg(Age) from food_delivery group by Occupation;

-- diiferent occupation
select Occupation from food_delivery group by Occupation; 

-- Count which gender are more oerdering online from which profession
select Occupation,count(Gender) as total_male from food_delivery where Gender='Male' group by Occupation; 

-- Count which gender are more oerdering online from which profession
select Occupation,count(Gender) as total_female from food_delivery where Gender='Female' group by Occupation;

-- from which eduaction qualification customers are regular  
select Qualifications,count(Customer_type) as regular from food_delivery where Customer_type='Regular' group by Qualifications;

-- in feedback total positive and negative from based on gender
select Gender,count(Feedback='Positive') as Positive,count(Feedback='Negative') as Negative from food_delivery group by Gender;