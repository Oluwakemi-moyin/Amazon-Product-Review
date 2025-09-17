select *
from [AmazonReviewsScraper (1)_2];

select rating_count,
      Review_rating
from [AmazonReviewsScraper (1)_2];


SELECT TOP 3
    rating_count,
    review_rating
FROM [AmazonReviewsScraper (1)_2]
ORDER BY review_rating DESC;


select Avg(product_stars) as totalproducts,
       Avg(Helpful_count) as totalcount,
       Avg(Review_rating) as totalreview
From [AmazonReviewsScraper (1)_2];


select SUM(product_stars) as totalproducts,
       SUM(Helpful_count) as totalcount,
       SUM(Review_rating) as totalreview
From [AmazonReviewsScraper (1)_2];


SELECT 
    CASE 
        WHEN review_rating >= 4 THEN 'Positive'
        WHEN review_rating = 3 THEN 'Neutral'
        ELSE 'Negative'
    END AS Sentiment,
    COUNT(*) AS ReviewCount
FROM [AmazonReviewsScraper (1)_2]
GROUP BY 
    CASE 
        WHEN review_rating >= 4 THEN 'Positive'
        WHEN review_rating = 3 THEN 'Neutral'
        ELSE 'Negative'
    END
ORDER BY ReviewCount DESC;


select
       Product_name,
       avg(review_rating) as avgrating,
       count(*) as totalrating
       from [AmazonReviewsScraper (1)_2]
       group by Product_name
       order by avgrating desc;


       select
       Review_title,
       avg(review_rating) as avgtitlerating,
       count(*) as totalrating
       from [AmazonReviewsScraper (1)_2]
       group by Review_title
       order by avgtitlerating desc;




