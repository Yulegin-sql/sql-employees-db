-- Запрос №4: Сотрудники на проектах (M:N)
-- Автор: Глеб Юлегин
-- Дата: 2026-09-23

select e.first_name, e.last_name, pr.name as project_name, ep.role, ep.assigned_at, pr.status AS project_status
from employee_projects ep 
join employees e on ep.employee_id = e.id
join projects pr on ep.project_id = pr.id
order by project_name, e.last_name;