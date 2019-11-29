Create DataBase Homework
Use [Homework]
Go
Create table Author
(
AuthorId Int Not Null Primary Key IDENTITY  (1,1),
FirsName nvarchar(100) Not Null,
LastName nvarchar(100) Not Null,
BirthDate date Not Null
)
Select* from Author

Insert into Author (FirsName, LastName, BirthDate) 
Values 
 (
 'Philippa', 
 'Gregory',
'1975-05-26'
 ),
  (
  'Svetlana', 
  'Aleksievici', 
  '1915-02-01'
  ),
 (
 'Harold',
 'Robbins', 
 '1976-12-31'
 );

DELETE FROM Author 
WHERE BirthDate>='1975-01-01' AND BirthDate <'1976-01-01'

CREATE TABLE Book
(
Title nvarchar(150) NOT NULL PRIMARY KEY, 
 PublisherName nvarchar(150) NOT NULL,
 Year int NOT NULL CHECK (YEAR>=1000 AND YEAR<=3000),
 Price int NOT NULL,
 AuthorId int NOT NULL,
 FOREIGN KEY (AuthorId) REFERENCES Author (AuthorId)
)

SELECT * FROM Book

INSERT INTO Book (Title, PublisherName,Year, Price, AuthorId)
VALUES
(
'Lady of the rivers',
'Polirom',
2010,
200,
4
),
(
'Chernobyl Prayer',
'Litera',
2009,
150,
2
);
DELETE FROM Book
WHERE Price<160