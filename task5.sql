Create table studentScores(studentId INT, TotalScore Int, Mathscore Int,ScienceScore Int);
Insert into studentScores(studentId, TotalScore, Mathscore,ScienceScore) values 
(1,95,45,50),
(2,85,35,60),
(3,75,40,30),
(4,65,25,20);

select studentId, TotalScore, case
	when TotalScore >=90 then 'A'
    when TotalScore >=80 then 'B'
    when TotalScore >=70 then 'C'
    else 'D (Fail)'
    end as Grade
from studentScores;

select studentId,mathScore, ScienceScore,
	case 
		when MathScore>=40 then 'Pass'
        else 'Fail'
	end as MathStatus,
    case
		when ScienceScore>=40 then 'Pass'
        else 'Fail'
	end as ScienceStatus
from StudentScores;
