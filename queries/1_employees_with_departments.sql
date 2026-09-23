-- Запрос №1: Сотрудники с отделами и должностями
-- Автор: Глеб Юлегин
-- Дата: 2026-09-23

select e.first_name, e.last_name, d.name as department, p.title as position, p.grade, e.salary
from employees e
join departments d on e.department_id = d.id
join positions p on e.position_id = p.id
order by e.salary DESC;
