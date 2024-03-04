-- Combines data from the Listing, ListingStatus, and Search tables.
-- Displays each listing's title, price, current status, and the search criteria it matches.
-- The goal of this query was to show the view of the listings, showing not just the listing details but also how they relate to specific search results and their current market status.
-- The query outputs a list of shoe listings, including the title, price, status, and the name of the shoe being searched for, and the size of the shoe.

SELECT L.title, L.priceOfShoe, LS.status, S.shoeName, s.sizeOfShoe
FROM Listing L
JOIN ListingStatus LS ON L.ListingId = LS.listingId
JOIN Search S ON L.criteriaId = S.criteriaId
WHERE LS.statusDate > '2023-04-01'
