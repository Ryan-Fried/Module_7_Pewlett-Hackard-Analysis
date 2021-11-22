# Module_7_Pewlett-Hackard-Analysis

# Overview

The purpose of this analysis was to refine our predictions of an oncoming "silver tsunami", helping Pewlett Hackard prepare for the retirement of many older employees. Specifically, this analysis expands on previous work which determined various factors including an estimate of the number of employees to retire in each department, including the retiring employees by title, as well as a table of employees potentially eligible for a mentorship program.

# Results

- The retiring_titles table breaks down the 90,398 retirement eligible employees by title. The table reveals a large amount of retirement eligible employees currently work as Senior Engineers and Senior Staff, while relatively few work as Managers, Assistant Engineers, and Technique Leaders. 

- In general, it makes sense that most retirement aged employees work in higher ranking or senior positions. This assumption is illustrated by the titles of potentially retiring employees. This is important for Pewlett Hackard to understand as higher level positions, especially at such a large volume, will likely be challenging to replace. The company must plan ahead to ensure qualified candidates are able to replace skilled, long-time employees at significant scale.

- The list of employees potentially eligible for the mentorship program is simply a list of all employees born in the year 1965 that are currently employed at the company. This list contains 1,549 employees - about .06% of the 240,124 total current employees at Pewlett Hackard. This eligibility filter seems a bit arbitrary, as the years flagged for retirement eligibility are 1952 through 1955 as opposed to only the year 1965. 

- One interesting observation in regards to the mentorship eligibility table is in the distribution of employees by job title as compared to the retiring employees. As mentorship employees are somewhat younger than retiring employees, the ratio of job titles held within the certain age range is slightly different. For example, the somewhat younger sample of mentorship employees favors staff positions as opposed to senior staff positions, which are favored amongst retiring employees.

# Summary

- Additional Table - total_current - simple table that provides the total number of current employees with no age, department, or other filters
- Additional Table - mentorship_title - table breaks down the employees eligible for the retirement program by title - interesting to compare to the retiring titles table
- Additional Table - titles_count - point of reference to compare retiring titles and mentorship title to the entire company
- 
