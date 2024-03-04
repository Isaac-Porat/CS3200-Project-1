-- Identifies listings that are priced above the average price of all listings for a specific shoe size. 
-- The subquery calculates the average price for a size 9 shoe, and the main query uses this value to filter listings that exceed this average price. 
-- The query outputs a list of listings that are more expensive that the average for size 9 shoes, including their title, price, and size. This query can help identify shoes that are priced above market trends for their size category. 

SELECT title, priceOfShoe, sizeOfShoe
FROM Listing
WHERE priceOfShoe < (
  SELECT AVG(priceOfShoe)
  FROM Listing
  WHERE sizeOfShoe = '9'
)
