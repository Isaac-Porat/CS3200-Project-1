-- The query filters listings based on a combination of conditions: listings must either fall within a specified price range ($100 to $300) or have a condition rating above 8.5, and they must have been listed after April 1, 2023. 
-- The output is a list of listings showing the title, price, condition, and the date they were scraped. The output is useful for finding listings that offer good value or quality and are relatively new.

SELECT title, priceOfShoe, conditionOfShoe, scrapeDate
FROM Listing
WHERE (priceOfShoe BETWEEN 100 AND 300 OR conditionOfShoe > 8.5)
AND scrapeDate > '2023-04-01';
