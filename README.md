# Library-Management-System--2

# Task 2 – Data Insertion and Null Handling

## 📘 Overview
This project demonstrates the use of SQL Data Manipulation Language (DML) commands such as `INSERT`, `UPDATE`, and `DELETE` along with NULL value handling as part of Task 2 for the SQL Developer Internship.

## 🛠 Tools Used
- MySQL Workbench / DB Fiddle / SQLiteStudio
- GitHub for version control

## 📄 Description

### ✅ Operations Performed
- **INSERT** statements to populate tables with sample data
- **Handling NULL** values while inserting partial data (e.g., unknown authors or missing emails)
- **UPDATE** commands to modify existing rows based on conditions
- **DELETE** statement to remove invalid/incomplete records
- **INSERT using SELECT** to add rows conditionally
- **Rollback Simulation** added as a comment (note: requires transaction support)

### 🧪 Tables Affected
- `Authors`
- `Categories`
- `Books`
- `Members`
- `IssuedBooks`

### 💡 Concepts Covered
- DML (INSERT, UPDATE, DELETE)
- NULL vs 0
- Default values
- Conditional inserts
- IS NULL clause
- Insert into specific columns
- Partial data handling
- ON DELETE CASCADE (mentioned but not directly used)

## 🧾 Files Included
- `task2_data.sql` – SQL script with data manipulation queries
- `README.md` – This file

## 🚀 How to Use
1. Open MySQL Workbench or DB Fiddle
2. Run the schema from Task 1 (`library_schema.sql`) first
3. Then run `task2_data.sql` to populate and manipulate data
