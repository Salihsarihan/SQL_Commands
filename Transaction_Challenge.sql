BEGIN;

UPDATE employees
SET position_title  ='Head of Sales'
WHERE emp_id = 2 ;
UPDATE employees
SET position_title  ='Head of BI'
WHERE emp_id = 3 ;
UPDATE employees
SET salary  = 12587.00
WHERE emp_id = 2;
UPDATE employees
SET salary  =14614.00
WHERE emp_id = 3 ;
COMMIT;

