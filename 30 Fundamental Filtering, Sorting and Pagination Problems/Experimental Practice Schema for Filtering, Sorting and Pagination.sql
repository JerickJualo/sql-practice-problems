-- 1. Create the Products table
CREATE TABLE Products (
  ProductID    SERIAL PRIMARY KEY,
  Name         VARCHAR(100) NOT NULL,
  Category     VARCHAR(50)  NOT NULL,
  Price        NUMERIC(8,2) NOT NULL,
  Stock        INT          NOT NULL,
  CreatedDate  DATE         NOT NULL
);

-- 2. Insert example data
INSERT INTO Products (Name, Category, Price, Stock, CreatedDate) VALUES
('Laptop',        'Electronics', 1200.00,  10,  '2021-05-10'),
('Smartphone',    'Electronics',  800.00,  25,  '2021-06-15'),
('Headphones',    'Electronics',  150.00,  50,  '2021-07-20'),
('Novel A',       'Books',         20.00, 100,  '2020-11-01'),
('Novel B',       'Books',         15.00,  80,  '2020-12-10'),
('T-Shirt',       'Clothing',      25.00, 200,  '2021-03-05'),
('Jeans',         'Clothing',      40.00, 150,  '2021-04-12'),
('Coffee Maker',  'Home',          70.00,  30,  '2021-02-14'),
('Blender',       'Home',          60.00,  40,  '2021-01-20'),
('Desk Lamp',     'Home',          30.00,  60,  '2021-05-01'),
('Notebook',      'Books',          5.00, 300,  '2021-06-01'),
('Jacket',        'Clothing',     100.00,  75,  '2021-08-01');
