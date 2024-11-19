CREATE DATABASE sailors;
 USE sailors;

CREATE TABLE Sailors (
sid INT AUTO_INCREMENT PRIMARY KEY,
 sname VARCHAR(100),
rating INT, 
age INT
);

CREATE TABLE Boats (
bid INT AUTO_INCREMENT PRIMARY KEY, bname VARCHAR(100),
color VARCHAR(50)
 
);


CREATE TABLE Reserves ( sid INT,
bid INT, day DATE,
FOREIGN KEY (sid) REFERENCES Sailors(sid),
FOREIGN KEY (bid) REFERENCES Boats(bid)
);


INSERT INTO Sailors (sname, rating, age) VALUES ('Bob', 5, 22),
('Alice', 4, 23),
('Charlie', 5, 20),
('David', 3, 21),
('Eve', 4, 19),
('Frank', 5, 24);

INSERT INTO Boats (bname, color) VALUES ('Boat1', 'red'),
('Boat2', 'green'),
('Boat3', 'blue'),
('Boat4', 'red'),
('Boat5', 'yellow');

INSERT INTO Reserves (sid, bid, day) VALUES
 
(1, 1, '2024-10-01'),
(1, 2, '2024-10-02'),
(2, 3, '2024-10-01'),
(3, 1, '2024-10-03'),
(4, 4, '2024-10-02'),
(5, 5, '2024-10-03'),
(1, 3, '2024-10-04');

SELECT s.*
FROM Sailors s
INNER JOIN Reserves r ON s.sid = r.sid WHERE r.bid = 1;

select * from sailors inner join reserves on sailors.sid = reserves.sid where reserves.bid = 1 ; -- inner jion

SELECT b.bname FROM Boats b
INNER JOIN Reserves r ON b.bid = r.bid INNER JOIN Sailors s ON r.sid = s.sid WHERE s.sname = 'Bob';






