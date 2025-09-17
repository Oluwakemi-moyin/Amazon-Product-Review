select *
from Cleaned_AmazonReviews;

select Asin,Reviewer_name,review_text,[Date], count(*) AS Dupcount
from cleaned_AmazonReviews
group by Asin,Reviewer_name,review_text,[Date]
Having Count(*) > 1;

-- product review rating 1,2,3,4,5

select review_rating, count(*) as numofreviews
from Cleaned_AmazonReviews
group by review_rating
order by review_rating desc;


-- Average rating with total average review
SELECT 
    Asin, 
    product_name, 
    AVG(Review_rating) AS AvgRating, 
    COUNT(*) AS NumOfReviews
FROM Cleaned_AmazonReviews
GROUP BY Asin, product_name;


-- Products with review rating 5
SELECT 
    Asin, 
    product_name, 
    COUNT(*) AS NumOfReviews_4
FROM Cleaned_AmazonReviews
where review_rating = 4
GROUP BY Asin, product_name;


-- Products with review ratings 5
SELECT 
    Asin, 
    product_name, 
    COUNT(*) AS NumOfReviews_5
FROM Cleaned_AmazonReviews
where review_rating = 5
GROUP BY Asin, product_name;



-- Orders reviews between '2025-01-01 and '2025-12-31'
select 
    Asin,
    product_name,
    product_stars,
    rating_count,
    review_rating,
    reviewer_name,
    review_text,
    [date]
    from Cleaned_AmazonReviews
    where [date] BETWEEN '2025-01-01' AND '2025-12-31'
    order by [date];


    -- Top 5 reviews by year
    SELECT TOP 5
    Asin,
    product_name,
    Review_rating,
    Review_text,
    Helpful_Count,
    year([Date]) as Review_year
FROM Cleaned_AmazonReviews
ORDER BY Review_rating DESC, Helpful_Count DESC, [Date] DESC;

-- total reviews
select SUM(review_rating) AS Total_rating,
       SUM(rating_count) AS Total_rating,
       SUM(helpful_count) AS Total_helpful
from Cleaned_AmazonReviews;

-- Average reviews
select AVG(review_rating) AS Total_rating,
       AVG(rating_count) AS Total_rating,
       AVG(helpful_count) AS Total_helpful
from Cleaned_AmazonReviews;


