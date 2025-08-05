
-- INSERT DATA INTO Authors
INSERT INTO Authors (Name) VALUES ('J.K. Rowling'), ('George Orwell'), ('Agatha Christie');

-- INSERT DATA INTO Categories
INSERT INTO Categories (CategoryName) VALUES ('Fiction'), ('Science Fiction'), ('Mystery');

-- INSERT DATA INTO Books
INSERT INTO Books (Title, AuthorID, CategoryID, PublishedYear) VALUES
('Harry Potter and the Sorcerer's Stone', 1, 1, 1997),
('1984', 2, 2, 1949),
('Murder on the Orient Express', 3, 3, 1934),
('Unknown Title', NULL, 1, NULL); -- Example with NULLs

-- INSERT DATA INTO Members
INSERT INTO Members (Name, Email) VALUES
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com'),
('Charlie Brown', NULL); -- Missing email

-- INSERT DATA INTO IssuedBooks
INSERT INTO IssuedBooks (BookID, MemberID, IssueDate, ReturnDate) VALUES
(1, 1, '2025-08-01', '2025-08-10'),
(2, 2, '2025-08-02', NULL), -- Not returned yet
(3, 3, '2025-08-03', '2025-08-11');

-- UPDATE BOOK title where Author is NULL
UPDATE Books SET Title = 'TBD Title' WHERE AuthorID IS NULL;

-- UPDATE multiple rows in Members
UPDATE Members SET Email = 'charlie@example.com' WHERE Name = 'Charlie Brown';

-- DELETE a book that has no Author and no Year
DELETE FROM Books WHERE AuthorID IS NULL AND PublishedYear IS NULL;

-- INSERT partial values - only specifying columns needed
INSERT INTO Members (Name) VALUES ('David Miller');

-- Example: Rollback simulation (conceptual, actual rollback needs transaction block)
-- START TRANSACTION;
-- DELETE FROM Members WHERE MemberID = 4;
-- ROLLBACK;

-- INSERT using SELECT (copying one record)
INSERT INTO Categories (CategoryName)
SELECT 'Historical' WHERE NOT EXISTS (
    SELECT 1 FROM Categories WHERE CategoryName = 'Historical'
);
