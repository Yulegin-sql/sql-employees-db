-- Запрос №2: Средняя зарплата по отделам
-- Автор: Глеб Юлегин
-- Дата: 2026-09-23
select d.name as department, COUNT(*) as employees_count, ROUND(AVG(e.salary),2) as avg_salary, ROUND(SUM(salary),2) as total_payroll
from departments d  
join employees e  on d.id = e.department_id
group by d.name
order by avg_salary desc, employees_count DESC;