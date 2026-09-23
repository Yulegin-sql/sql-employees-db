-- Запрос №7: Сводка по отделам
-- Автор: Глеб Юлегин
-- Дата: 2026-09-23

select d.name as department, COUNT(*) as employees_count, ROUND(AVG(e.salary),2) as avg_salary, MIN(e.salary) as min_salary, MAX(e.salary) as max_salary, ROUND(SUM(salary),2) as total_payroll
from employees e 
join departments d on e.department_id = d.id
group by d.name
order by total_payroll desc;