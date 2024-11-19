CREATE DATABASE bank;
USE bank;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    account_holder VARCHAR(100),
    account_type VARCHAR(20),
    balance DECIMAL(10, 2),
    branch VARCHAR(50)
);

INSERT INTO accounts (account_holder, account_type, balance, branch) VALUES
('Alice Johnson', 'Savings', 1500.00, 'New York'),
('Bob Smith', 'Checking', 3000.00, 'Los Angeles'),
('Charlie Williams', 'Savings', 5000.00, 'Chicago');

SELECT * FROM accounts;

START TRANSACTION;

-- Savepoint created before any new operations to allow full rollback
SAVEPOINT sp1;

-- Insert new account
INSERT INTO accounts (account_holder, account_type, balance, branch) 
VALUES
('Emily clastk', 'Checking', 2500.00, 'San Francisco');

SELECT * FROM accounts;

-- Update operation
UPDATE accounts 
SET balance = 3700.00
WHERE account_holder = 'Emily clark';

commit;
-- Roll back to the savepoint sp1, undoing the update and the insert
ROLLBACK TO sp1;

SELECT * FROM accounts; -- Verifies that 'Emily Clark' is no longer present

SELECT * FROM accounts WHERE account_holder = 'Alice Johnson';	

SELECT * FROM accounts WHERE branch = 'New York' OR branch = 'Los Angeles';

SELECT * FROM accounts WHERE account_holder LIKE '%Smith%';

SELECT * FROM accounts WHERE balance BETWEEN 3000 AND 4000;