SELECT * from students;

#task 1:calculate the avg score for each subject
select 
	avg(MathScore) as AvgMathScore,
    avg(ScienceScore) as AvgScienceScore,
    avg(EnglishScore) as AvgEnglishScore
from students;

#task 2:Find the student with the highest total score across all subjects to identify the top performer.
select 
	studentid,
    name,
    (MathScore + ScienceScore + EnglishScore) as TotalScore
from students
order by TotalScore desc;

#task 3:Find the average score for male and female students to compare performance by gender.
select 
	avg(MathScore) as AvgMathScore,
    avg(ScienceScore) as AvgScienceScore,
    avg(EnglishScore) as AvgEnglishScore
from students
group by Gender;

#task 4:Count the number of students in each grade to observe grade distributions.
select
	Grade,
    count(*) as StudentCount
from students
group by Grade
order by Grade;

#task 5:Identify students whose Math score is above 80 to highlight high achievers in Math.
select
	Name, MathScore
from students
where MathScore>80;

#task 6:Update the grade of a student with a specific Student ID to reflect changes or corrections.
update students
set Grade = 'A+'
where studentid=1 or studentid=7;

select * from students where studentid=1 or studentid=7