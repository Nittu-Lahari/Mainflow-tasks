#inserting values into table and finding total score of each student
use studentmanagement;
show databases;
select studentid, Name, MathScore, ScienceScore,EnglishScore,TotalScore from students;
ALTER TABLE students
ADD COLUMN TotalScore float;
UPDATE students
SET TotalScore = MathScore + ScienceScore + EnglishScore
where studentid>0;

select * from students;

#task1: Top 5 students with score
select name,TotalScore from students
order by TotalScore desc
Limit 5;

#task 2:average of maths above 70
select avg(Mathscore) as Avg_MathScore , avg(TotalScore) as Avg_TotalScore from students
where Mathscore > 70 and TotalScore >200 and TotalScore<250;

#task 3:Second Highest MathScore
select name,Max(MathScore) as SecondHighest from students
where MathScore < (select Max(MathScore) from students);

SELECT name, MathScore 
FROM students 
WHERE MathScore = (SELECT MAX(MathScore) FROM students 
               WHERE MathScore < (SELECT MAX(MathScore) FROM students));
