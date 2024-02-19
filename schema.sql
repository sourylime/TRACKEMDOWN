DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE departments (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(150) NOT NULL UNIQUE,
  date_created DATE DEFAULT CURRENT_DATE NOT NULL
);

CREATE TABLE roles (
  role_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  department_id INT NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE employees (
  employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  role_id INT NOT NULL,
  FOREIGN KEY (role_id) REFERENCES roles(role_id),
  date_added DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  birthday DATE DEFAULT NULL
);
