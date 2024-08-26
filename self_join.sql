SELECT 
emp.employee_id,
emp.name as employee,
mng.name as manager,
mng2.name as manager_of_manager
FROM employee emp
left join employee mng
on emp.manager_id = mng.employee_id
left join employee mng2
on mng.manager_id = mng2.employee_id


