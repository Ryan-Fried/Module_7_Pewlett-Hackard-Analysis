# Module_7_Pewlett-Hackard-Analysis

# Overview

The purpose of this analysis was to refine our predictions of an oncoming "silver tsunami", helping Pewlett Hackard prepare for the retirement of many older employees. Specifically, this analysis expands on previous work which determined various factors including an estimate of the number of employees to retire in each department, including the retiring employees by title, as well as a table of employees potentially eligible for a mentorship program.

# Results

- The retiring_titles table breaks down the 72,458 retirement eligible employees by title. The table reveals a large amount of retirement eligible employees currently work as Senior Engineers and Senior Staff, while relatively few work as Managers, Assistant Engineers, and Technique Leaders. 

- In general, it makes sense that most retirement aged employees work in higher ranking or senior positions. This assumption is illustrated by the titles of potentially retiring employees. This is important for Pewlett Hackard to understand as higher level positions, especially at such a large volume, will likely be challenging to replace. The company must plan ahead to ensure qualified candidates are able to replace skilled, long-time employees at significant scale.

- The list of employees potentially eligible for the mentorship program is simply a list of all employees born in the year 1965 that are currently employed at the company. This list contains 1,549 employees - about .06% of the 240,124 total current employees at Pewlett Hackard. This eligibility filter seems a bit arbitrary, as the years flagged for retirement eligibility are 1952 through 1955 as opposed to only the year 1965. 

- One interesting observation in regards to the mentorship eligibility table is in the distribution of employees by job title as compared to the retiring employees. As mentorship employees are somewhat younger than retiring employees, the ratio of job titles held within the certain age range is slightly different. For example, the younger sample of mentorship employees favors staff positions as opposed to the senior staff positions favored amongst retiring employees.

# Summary

- Based on the birth range of 1952 to 1955, there are 72,458 employees currently employed at Pewlett Hackard that are eligible for retirement. This number equals about 30.1% of Pewlett Hackard's 240,124 total current employees. This figure of the currently employed retirement eligibile employees, which represents the number of positions potentially needing to be filled, was arrived at via the following query:

![Screenshot (64)](https://user-images.githubusercontent.com/91569387/142917360-f4e35d27-4f8a-4157-9043-6c142b1891ca.png)

- As nearly a third of the current employees might soon be retiring, there are certainly enough qualified, retirement-ready employees to mentor the next generation of Pewlett Hackard employees as they rise through the company. However, if we only include the 1,549 'mentorship eligible' employees born in 1965, there are not enough employees to mentor the 238,575 other non-retirement elibile Pewlett Hackard employees.

- The first addition table produced for this summary is the total_retiring table, displayed above. 

- The next additional table produced for this summary is the total_current table, which simply provides an easily countable list of all the current employees at Pewlett Hackard, with no filters such as age, department, or title. The query to create this table and its head are displayed below:

![Screenshot (66)](https://user-images.githubusercontent.com/91569387/142921388-537beae0-d731-4ca2-b256-e731f524dfc3.png)

- The next two additional tables produced for this summary are the mentorship_titles and titles_count tables, which break down the employees eligible for the retirement program by title, and the all current employees by title, respectively. These tables offer reference points for further analysis comparing breakdowns by title of smaller and larger subsets of the company to retirement eligbile employees. These two tables and the queries to create them are displayed below:

![Screenshot (67)](https://user-images.githubusercontent.com/91569387/142922889-654d6df8-8281-403f-be8d-cfaa4159068b.png)
![Screenshot (69)](https://user-images.githubusercontent.com/91569387/142922904-f86bfaa5-bb4b-4784-9086-afff479b6ece.png)
