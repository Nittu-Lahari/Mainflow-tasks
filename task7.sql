CREATE VIEW student_scores AS
SELECT s.studentId, s.name, sc.TotalScore
FROM students s
JOIN studentscores sc ON s.studentId = sc.studentId;

-- Step 6: Create a view for students who passed all subjects
CREATE VIEW passed_students AS
SELECT studentId, name
FROM students
WHERE studentId NOT IN (
    SELECT studentId FROM studentscores WHERE TotalScore < 40
);

-- Step 7: Usage examples
SELECT * FROM student_scores;
SELECT * FROM passed_students;
