--create table Wards table  

CREATE TABLE IF NOT EXISTS WARDS_TBL
           (Wards_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Wards_name VARCHAR (100) NOT NULL, 
            Wards_location VARCHAR(100) NOT NULL);

-- create Constituency table   
CREATE TABLE IF NOT EXISTS Constituency
            (Constituency_id INTEGER PRIMARY KEY AUTOINCREMENT,
            Constituency_name VARCHAR (100) NOT NULL);
           
-- Create Libraries Table
CREATE TABLE IF NOT EXISTS Libraries
             (Library_id INTEGER PRIMARY KEY AUTOINCREMENT,
             Library_name VARCHAR(100) NOT NULL,
             Library_ward_id INTEGER) ; 

--Create Books table
CREATE TABLE IF NOT EXISTS Books
             (Book_id INTEGER PRIMARY KEY AUTOINCREMENT,
             Book_title VARCHAR(100),
             Book_number INTEGER,
             Member_id INTEGER,
             Book_author VARCHAR(100) NOT NULL,
             Book_status VARCHAR(100) NOT NULL,
             Book_genre_id INTEGER);
             
--Create Library Member's table
CREATE TABLE IF NOT EXISTS Library_Members
             (Member_id INTEGER PRIMARY KEY AUTOINCREMENT,
             Member_name VARCHAR(100) NOT NULL,
             Member_ward_id INTEGER,
             Member_age INTEGER,
             Member_gender VARCHAR(50) NOT NULL,
             Member_email VARCHAR(100),
             Member_contact INTEGER,
             Member_status VARCHAR(100) NOT NULL,
             Member_start_date DATE,
             Member_borrowing_id INTEGER);
            
--Create Library_staff table
CREATE TABLE IF NOT EXISTS Library_staff
             (Library_Staff_id INTEGER PRIMARY KEY AUTOINCREMENT,
             Staff_name VARCHAR(100) NOT NULL,
             Staff_ward_id INTEGER,
             Job_title VARCHAR(100) NOT NULL,
             Department_id INTEGER,
             Salary INTEGER,
             Gender VARCHAR(50)) NOT NULL;

--Create Borrowing Table
CREATE TABLE IF NOT EXISTS Borrowing
             (Borrowing_id INTEGER PRIMARY KEY AUTOINCREMENT,
             Book_id INTEGER,
             Members_ward_id INTEGER,
             Date_Borrowed DATE,
             Date_returned DATE,
             Penalties INTEGER);
            
--Create Genre Table
CREATE TABLE IF NOT EXISTS Genre
              (Genre_id INTEGER PRIMARY KEY AUTOINCREMENT,
              Genre_name VARCHAR(100)) NOT NULL;
             
--Create Department Table 
CREATE TABLE IF NOT EXISTS Department
               (Department_id INTEGER PRIMARY KEY AUTOINCREMENT,
               Department_name VARCHAR(100) NOT NULL,
               Ward_id INTEGER);

--Create  Library_facilities table
CREATE TABLE IF NOT EXISTS Library_facilities
                 (Facility_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 Facility_name VARCHAR(100) NOT NULL,
                 Facility_condition VARCHAR(100) NOT NULL,
                 Facility_cost INTEGER,
                 Library_id INTEGER,
                 Donor_id INTEGER);
                
--Create Donors Table
CREATE TABLE IF NOT EXISTS Donor
               (Donor_id INTEGER PRIMARY KEY AUTOINCREMENT,
               Donor_name VARCHAR(100) NOT NULL,
               Donation_desc VARCHAR(100) NOT NULL,
               Book_id INTEGER,
               Revenue_id INTEGER);
              
--Create Revenue Table
CREATE TABLE IF NOT EXISTS Revenue
               (Revenue_id INTEGER PRIMARY KEY AUTOINCREMENT,
               Revenue_description VARCHAR(100) NOT NULL,
               Revenue_status VARCHAR (100) NOT NULL,
               Donor_id INTEGER);
            
            