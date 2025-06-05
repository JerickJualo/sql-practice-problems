CREATE TABLE Employees (
  EmployeeID   SERIAL PRIMARY KEY,
  FirstName    VARCHAR(50) NOT NULL,
  LastName     VARCHAR(50) NOT NULL,
  Email        VARCHAR(100) UNIQUE NOT NULL,
  Department   VARCHAR(50),
  Salary       NUMERIC(10,2) NOT NULL,
  HireDate     DATE NOT NULL
);

SELECT * FROM Employees;

INSERT INTO Employees (FirstName, LastName, Email, Department, Salary, HireDate) VALUES
('Alice',   'Smith',   'alice.smith@example.com',    'Sales',    55000.00, '2019-03-15'),
('Bob',     'Johnson', 'bob.johnson@example.com',    'Engineering', 72000.00, '2018-07-22'),
('Carol',   'Williams','carol.williams@another.com', 'HR',       48000.00, '2020-01-10'),
('David',   'Brown',   'david.brown@example.com',    'Sales',    61000.00, '2017-11-05'),
('Eva',     'Davis',   'eva.davis@another.com',      NULL,       45000.00, '2021-06-18'),
('Frank',   'Miller',  'frank.miller@example.com',   'Engineering', 80000.00, '2016-09-30'),
('Grace',   'Wilson',  'grace.wilson@example.com',   'Marketing', 53000.00, '2022-02-25'),
('Henry',   'Moore',   'henry.moore@another.com',    'HR',       50000.00, '2021-12-01'),
('Ivy',     'Taylor',  'ivy.taylor@example.com',     'Marketing', 52000.00, '2019-08-14'),
('Jack',    'Anderson','jack.anderson@example.com',  'Sales',    58000.00, '2018-05-03');


--FOR 16. Assign Department to Eva Davis, WE WILL ADD EVA DAVIS BACK BECAUSE WE DELETE THEM IN 9. Remove EmployeeID 5

INSERT INTO Employees(FirstName, LastName, Email, Department, Salary, HireDate)VALUES
('Eva',     'Davis',   'eva.davis@another.com',      NULL,       45000.00, '2021-06-18');

SELECT * 
FROM Employees