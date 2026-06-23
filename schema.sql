-- ============================================================
-- Student Management System - Database Schema
-- ============================================================
-- This script creates the MySQL database and tables used by the
-- application. The column names and order match what the Java
-- code expects, so the app will run against this schema as-is.
--
-- To set up:
--   1. Make sure MySQL Server is running.
--   2. Run this whole script (e.g. in MySQL Workbench, or:
--        mysql -u root -p < schema.sql
--      ).
--   3. Update the database username/password in the app's
--      connection code if yours differ from root / (blank).
-- ============================================================

CREATE DATABASE IF NOT EXISTS application;
USE application;

-- ------------------------------------------------------------
-- user: all login accounts (admins, and the back-office record
-- of each person). utype stores the role, e.g. 'admin',
-- 'lecturer', 'student'.
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS user (
    id        INT AUTO_INCREMENT PRIMARY KEY,
    name      VARCHAR(100),
    number    VARCHAR(30),
    address   VARCHAR(255),
    uname     VARCHAR(50) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    utype     VARCHAR(20) NOT NULL
);

-- ------------------------------------------------------------
-- students1: student records and their login details.
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS students1 (
    ID           INT AUTO_INCREMENT PRIMARY KEY,
    Name         VARCHAR(100),
    Dateofbirth  VARCHAR(20),      -- stored as text from the form
    Address      VARCHAR(255),
    Gender       VARCHAR(10),
    Number       VARCHAR(30),      -- student / contact number
    Course       VARCHAR(100),
    uname        VARCHAR(50) NOT NULL,
    Password     VARCHAR(255) NOT NULL
);

-- ------------------------------------------------------------
-- lecturer: lecturer records and their login details.
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS lecturer (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    name           VARCHAR(100),
    qualification  VARCHAR(100),
    salary         DECIMAL(10,2),
    phone          VARCHAR(30),
    email          VARCHAR(100),
    uname          VARCHAR(50) NOT NULL,
    password       VARCHAR(255) NOT NULL
);

-- ------------------------------------------------------------
-- course: modules/courses, linked to a lecturer by username.
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS course (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    username       VARCHAR(50),     -- lecturer's uname
    qualification  VARCHAR(100),
    course         VARCHAR(100),
    credits        INT,
    module         VARCHAR(100)
);

-- ------------------------------------------------------------
-- grades: a student's marks for a course.
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS grades (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    username      VARCHAR(50),       -- student's uname
    course        VARCHAR(100),
    semestermark  DECIMAL(5,2),
    examination   DECIMAL(5,2),
    finalmark     DECIMAL(5,2)
);

-- ------------------------------------------------------------
-- Optional: a starter admin account so you can log in first.
-- Change the username/password after your first login.
-- ------------------------------------------------------------
INSERT INTO user (name, number, address, uname, password, utype)
VALUES ('Administrator', '0000000000', 'N/A', 'admin', 'admin', 'admin');
