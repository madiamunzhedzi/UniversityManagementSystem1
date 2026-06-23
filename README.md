# Student Management System

A desktop university management system built in Java (Swing) with a MySQL database. It supports three roles — administrators, lecturers, and students — each with their own login and permissions. Built to understand how university systems work as part of my Computer Science studies.

## Features

- **Login system** for different user roles
- **Admin:** register students and manage courses/modules
- **Lecturer:** record and update student marks and grades
- **Student:** log in to view registered courses and results
- **Reports:** view registered students and results

## Tech Stack

- **Language:** Java (Swing GUI, built in NetBeans)
- **Database:** MySQL
- **Driver:** MySQL Connector/J 9.0.0

## Getting Started

### Prerequisites
- Java Development Kit (JDK) 8 or later
- NetBeans IDE (the project is set up as a NetBeans project)
- MySQL Server running locally

### Database setup
1. Make sure MySQL Server is running.
2. Run the included [`schema.sql`](schema.sql) to create the `application` database and all tables:
   ```bash
   mysql -u root -p < schema.sql
   ```
   It also adds a starter admin login (username `admin`, password `admin`) so you can log in first time.
3. Update the database connection details in the source if your MySQL username/password differ from `root` / blank.

### Running the project
1. Clone the repository:
   ```bash
   git clone https://github.com/madiamunzhedzi/UniversityManagementSystem.git
   ```
2. Open the project in NetBeans.
3. Make sure MySQL is running and the database is set up.
4. Run the main class to launch the application.

## What I Learned

This project taught me how to design a system around multiple user roles, connect a Java desktop application to a MySQL database with JDBC, and build interactive forms with Java Swing.

## Future Improvements

- [ ] Move database credentials into a config file instead of hardcoding them
- [ ] Add input validation and clearer error messages
