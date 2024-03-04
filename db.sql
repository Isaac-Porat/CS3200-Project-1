CREATE TABLE Reseller (
    resellerId INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE Search (
    criteriaId INTEGER PRIMARY KEY,
    resellerId INTEGER,
    shoeName TEXT,
    sizeOfShoe TEXT,
    maxPrice REAL,
    minPrice REAL,
    zipCode INTEGER,
    qualityIndicator INTEGER,
    FOREIGN KEY (resellerId) REFERENCES Reseller(resellerId)
);

CREATE TABLE Listing (
    listingId INTEGER PRIMARY KEY,
    criteriaId INTEGER,
    title TEXT,
    sizeOfShoe TEXT,
    priceOfShoe REAL,
    conditionOfShoe REAL,
    url TEXT,
    scrapeDate DATE,
    FOREIGN KEY (criteriaId) REFERENCES Search(criteriaId)
);

CREATE TABLE PotentialInventory (
    potInventoryId INTEGER PRIMARY KEY,
    listingId INTEGER,
    resellerId INTEGER,
    FOREIGN KEY (listingId) REFERENCES Listing(listingId),
    FOREIGN KEY (resellerId) REFERENCES Reseller(resellerId)
);

CREATE TABLE SearchMetrics (
    metricsId INTEGER PRIMARY KEY,
    criteriaId INTEGER,
    numberOfResults INTEGER,
    searchDate DATE,
    FOREIGN KEY (criteriaId) REFERENCES Search(criteriaId)
);

CREATE TABLE ListingStatus (
    statusId INTEGER PRIMARY KEY,
    listingId INTEGER,
    status TEXT,
    statusDate DATE,
    FOREIGN KEY (listingId) REFERENCES Listing(listingId)
);