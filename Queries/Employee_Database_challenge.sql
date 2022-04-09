-- Use Dictinct with Orderby to remove duplicate rows
-- DELIVERABLE 1
--RETIREMENTE_TITLES

select e.emp_no, e.first_name, e.last_name,
	ti.title, ti.from_date,ti.to_date
into retirement_titles
from employees as e
inner join titles as ti
on (e.emp_no=ti.emp_no)
where e.birth_date between '1952-01-01' and '1955-12-31'
order by emp_no
;

--UNIQUE_TITLES 
select distinct on (emp_no) emp_no, 
	first_name, 
	last_name, 
	title
into unique_titles
from retirement_titles
where to_date='9999-01-01'
order by emp_no,to_date desc


select * from unique_titles;

 --RETIRING_TITLES
select title, count(*)
into retiring_titles
from unique_titles
group by title
order by count(*) desc

select * from retiring_titles;

--DELIVERABLE 2
--Mentorship eligibility

select distinct on (e.emp_no) 
	e.emp_no, e.first_name,
	e.last_name,e.birth_date,
	d.from_date,d.to_date,
	ti.title
into mentorship_eligibility
from employees e
join dept_emp d on (e.emp_no=d.emp_no)
join titles ti on (ti.emp_no=d.emp_no)
where (d.to_date='9999-01-01') and (e.birth_date between '1965-01-01' and '1965-12-31')
order by e.emp_no, ti.to_date desc
;

select * from mentorship_eligibility;



