use studentmanagement;
select studentID,Name,MathScore,TotalScore from students
order by TotalScore desc;

select name, TotalScore 
,RANK() OVER (ORDER BY TotalScore DESC)  as Ranks
from students;

select SUM(MathScore) OVER (ORDER BY StudentID) as TotalMathScore
from students;
