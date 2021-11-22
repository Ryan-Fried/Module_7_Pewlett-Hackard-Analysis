
-- Challenge - Deliverable 1
-- Create retirement_titles table
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Create retiring_titles table
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY (ut.title)
ORDER BY COUNT (ut.title) DESC;

-- Deliverable 2
-- Create mentorship_eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no

-- Tables for ReadMe
SELECT DISTINCT ON (de.emp_no) de.emp_no,
	de.to_date
INTO total_current
FROM dept_emp as de
WHERE (to_date = '9999-01-01')

SELECT COUNT (emp_no) FROM total_current
SELECT * FROM mentorship_eligibility

-- Create mentorship_titles table
SELECT me.title, me.emp_no
INTO mentorship_candidates
FROM mentorship_eligibility as me

SELECT COUNT (mc.title), mc.title
INTO mentorship_titles
FROM mentorship_candidates as mc
GROUP BY (mc.title)
ORDER BY COUNT (mc.title) DESC;

-- Create titles_count table
SELECT COUNT (ti.title), ti.title
INTO titles_count
FROM titles as ti
WHERE (ti.to_date = '9999-01-01')
GROUP BY (ti.title)
ORDER BY COUNT (ti.title) DESC;

SELECT * FROM retiring_titles
SELECT * FROM mentorship_titles


	


