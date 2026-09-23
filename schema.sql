-- Проект: База сотрудников (HR Database)
-- Автор: Глеб Юлегин
-- Дата: 2026-09-22
-- СУБД: MySQL 8.0

-- 1. Таблица отделов (departments)

create table departments (
id INT primary key auto_increment,
name VARCHAR(100) not null unique,
manager_id INT null,
budget DECIMAL(12,2),
created_at DATE default (current_date)
);

-- 2. Таблица должностей (positions)

create table positions (
id INT primary key auto_increment,
title VARCHAR(100) not null ,
grade VARCHAR(20) not null,
min_salary DECIMAL(12,2) not null,
max_salary DECIMAL(12,2) not null,
CHECK (min_salary <= max_salary)
);

-- 3. Таблица сотрудников (employees)

create table employees (
id INT primary key auto_increment,
first_name VARCHAR(50) not null ,
last_name VARCHAR(50) not null,
birth_day date,
phone VARCHAR(20),
hire_date DATE NOT NULL,
department_id INT,
position_id INT,
salary DECIMAL(10, 2) NOT NULL,
is_active BOOLEAN DEFAULT TRUE,
foreign key (department_id) references departments(id),
foreign key (position_id) references positions(id)
);

-- 4. Таблица проектов (projects)

CREATE TABLE projects (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
start_date DATE NOT NULL,
end_date DATE,
budget DECIMAL(12, 2),
status VARCHAR(20) DEFAULT 'active',
CHECK (status IN ('active', 'completed', 'cancelled'))
);

-- 5. Связь сотрудников и проектов (M:N)

CREATE TABLE employee_projects (
employee_id INT NOT NULL,
project_id INT NOT NULL,
role VARCHAR(50),
assigned_at DATE DEFAULT (CURRENT_DATE),
primary key (employee_id, project_id),
foreign key (employee_id) references employees(id) on delete cascade,
foreign key (project_id) references projects(id) on delete cascade
);
