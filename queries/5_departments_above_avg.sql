-- Запрос №6: Ранг сотрудников внутри отдела
-- Автор: Глеб Юлегин
-- Дата: 2026-09-23

WITH company_avg AS (
    SELECT AVG(salary) AS avg_all FROM employees
)
select d.name as department, ROUND(AVG(e.salary),2) as avg_salary, ROUND(AVG(e.salary) - (select avg_all from company_avg),2) as diff_from_company
from departments d 
join employees e on d.id = e.department_id
group by d.name
HAVING AVG(e.salary) > (select avg_all from company_avg)
order by avg_salary desc; 