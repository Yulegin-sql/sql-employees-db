-- Запрос №6: Ранг сотрудников внутри отдела
-- Автор: Глеб Юлегин
-- Дата: 2026-09-23

select 
d.name as department, e.first_name, e.last_name, e.salary, rank() over (partition by d.name order by e.salary DESC ) as rank_in_dept, count(*) OVER(partition by d.name) as total_in_dept
from employees e
join departments d on e.department_id = d.id
order by d.name, rank_in_dept;