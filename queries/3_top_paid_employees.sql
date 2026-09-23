-- Запрос №3: Топ-5 самых высокооплачиваемых сотрудников
-- Автор: Глеб Юлегин
-- Дата: 2026-09-23

select e.first_name, e.last_name, d.name as department, p.title as position, salary
from employees e
join departments d on e.department_id = d.id
join positions p on e.position_id = p.id
where is_active = true
order by e.salary DESC  
limit 5;