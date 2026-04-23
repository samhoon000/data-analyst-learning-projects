-- Restaurant Data
INSERT INTO Restaurant (RestaurantId, RestaurantName, Address, Rating) VALUES
(1, 'Spice Hub', 'MG Road, Mangalore', 4.5),
(2, 'Food Fiesta', 'City Center, Bangalore', 4.2),
(3, 'Tasty Treat', 'Bejai, Mangalore', 4.0),
(4, 'Urban Bites', 'Indiranagar, Bangalore', 4.7),
(5, 'Coastal Kitchen', 'Surathkal, Mangalore', 4.3);

-- Menu Data
INSERT INTO Menu (ItemId, ItemName, Price) VALUES
(101, 'Pizza', 250.00),
(102, 'Burger', 120.00),
(103, 'Pasta', 180.00),
(104, 'Coffee', 80.00),
(105, 'Sandwich', 100.00),
(106, 'Fried Rice', 160.00),
(107, 'Noodles', 150.00),
(108, 'Ice Cream', 90.00);

-- Customers Data
INSERT INTO Customers (CustomerId, CustomerName, PhoneNo, Address) VALUES
(201, 'Rahul', '9876543210', 'Mangalore'),
(202, 'Anita', '9123456780', 'Bangalore'),
(203, 'Kiran', '9988776655', 'Udupi'),
(204, 'Sneha', '9345612780', 'Mysore'),
(205, 'Arjun', '9012345678', 'Mangalore'),
(206, 'Pooja', '9871203456', 'Bangalore');

-- Orders Data
INSERT INTO Orders (OrderId, CustomerId, RestaurantId, ItemId, Quantity) VALUES
(1, 201, 1, 101, 2),
(2, 202, 2, 104, 1),
(3, 203, 3, 102, 3),
(4, 204, 4, 103, 1),
(5, 205, 5, 106, 2),
(6, 206, 2, 105, 1),
(7, 201, 1, 104, 2),
(8, 202, 4, 108, 3),
(9, 203, 3, 107, 1),
(10, 205, 5, 101, 1);