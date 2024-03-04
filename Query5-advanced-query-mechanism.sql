-- The query categorizes listings into price categories based on their price. It uses a CASE statement to assign each listing to a 'High-End', 'Mid-Range', or 'Budget' category based on its price. 
-- The output is a list of listings with their condition and a new column indicating their price category. The output is beneficial for quickly identifying which listings fall into premium price ranges versus thopse that are more affordable. 

SELECT title, conditionOfShoe, 
CASE
  WHEN priceOfShoe >= 300 THEN 'High-End'
  WHEN priceOfShoe >= 150 AND priceOfShoe < 300 THEN 'Mid-Range'
  ELSE 'Budget'
END AS PriceCategory
FROM Listing;
