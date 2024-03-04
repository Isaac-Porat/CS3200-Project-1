-- Groups listings of shoe size and counts the number of listings for each size. The HAVING clause filters these groups to only include shoe sizes with more than 2 listings. 
-- The output is a summary showing each shoe size that has more than two listings and the count of listings for those sizes. 

SELECT sizeOfShoe, COUNT(listingID) AS NumberOfListings
FROM Listing
GROUP BY sizeOfShoe
HAVING COUNT(listingId) > 2;
