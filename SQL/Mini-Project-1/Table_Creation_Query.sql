CREATE TABLE `Restaurant` (
  `RestaurantId` INTEGER,
  `RestaurantName` VARCHAR(50),
  `Address` VARCHAR(255),
  `Rating` DECIMAL(2,1),
  PRIMARY KEY (`RestaurantId`)
);

CREATE TABLE `Menu` (
  `ItemId` INTEGER,
  `ItemName` VARCHAR(50),
  `Price` DECIMAL(10,2),
  PRIMARY KEY (`ItemId`)
);

CREATE TABLE `Customers` (
  `CustomerId` INTEGER,
  `CustomerName` VARCHAR(50),
  `PhoneNo` VARCHAR(15),
  `Address` VARCHAR(255),
  PRIMARY KEY (`CustomerId`)
);

CREATE TABLE `Orders` (
  `OrderId` INTEGER,
  `CustomerId` INTEGER,
  `RestaurantId` INTEGER,
  `ItemId` INTEGER,
  `Quantity` INTEGER,
  PRIMARY KEY (`OrderId`),
  FOREIGN KEY (`CustomerId`)
      REFERENCES `Customers`(`CustomerId`),
  FOREIGN KEY (`RestaurantId`)
      REFERENCES `Restaurant`(`RestaurantId`),
  FOREIGN KEY (`ItemId`)
      REFERENCES `menu`(`ItemId`)
);

