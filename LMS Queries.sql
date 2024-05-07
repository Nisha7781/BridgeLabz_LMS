USE LMS_DB;

-- 1- find all candidate having java technology

SELECT f.Id, f.First_Name, f.Last_Name, t.tech_name FROM Fellowship_Candidate f
JOIN Candidate_Stack_Assignment cs ON f.Id = cs.candidate_id
JOIN Tech_Stack t ON cs.stack_id = t.Id
WHERE t.tech_name = 'Java';

-- 2- find all mentors and ideations have java technology
SELECT m.name, m.mentor_type FROM Mentor m
JOIN Mentor_Tech_Stack ms ON m.Id = ms.mentor_id
JOIN Tech_Stack t ON ms.tech_stack_id = t.Id
WHERE t.tech_name = 'Java';

-- 7- find name of candidate which did not assign technology

SELECT f.First_Name, f.Last_Name FROM Fellowship_Candidate f
LEFT JOIN Candidate_Stack_Assignment cs ON f.Id = cs.candidate_id
WHERE cs.candidate_id IS NULL;

-- 8- find name of cnadidate which is not submit documents

SELECT f.First_Name, f.Last_Name FROM Fellowship_Candidate f
LEFT JOIN Candidate_Documents cd ON f.Id = cd.candidate_id
WHERE cd.status = 'Pending';

-- 9- find name of candidate which is not submit bank details

SELECT f.First_Name, f.Last_Name FROM Fellowship_Candidate f
LEFT JOIN Candidate_Bank_Details cbd ON f.Id = cbd.candidate_Id
WHERE cbd.candidate_Id IS NULL;

-- 10-find name of candidates which is joined in dec month
SELECT f.First_Name, f.Last_Name 
FROM Fellowship_Candidate f
WHERE MONTH(f.joining_date) = 12;

-- 11-find name of candidates which is end of couse in feb
SELECT First_Name, Last_Name, Joining_date
FROM Fellowship_Candidate 
WHERE TIMESTAMPDIFF(MONTH, Joining_Date, '2024-02-28') BETWEEN 6 AND 7;

-- 12-find name of candidate and his ending date according to joining date if joining date is 22-02-2019

SELECT CONCAT(First_Name, ' ', Last_Name) AS Candidate_Name, Joining_Date, DATE_ADD(Joining_Date, INTERVAL 6 MONTH) AS End_Date
FROM Fellowship_Candidate
WHERE Joining_Date = '2019-02-22';

-- 13-find all candidates which is passed out in 2019 year

SELECT f.First_Name, f.Last_Name FROM Fellowship_Candidate f
JOIN Candidate_Qualification cq ON f.Id = cq.candidate_id
WHERE cq.passing_year = 2019 AND cq.is_passing_year_verified = 1;

-- 14- which technology assign to which candidates which is having MCA background 

SELECT f.First_Name, f.Last_Name, f.Degree, t.tech_name FROM Fellowship_Candidate f
JOIN Candidate_Stack_Assignment cs ON f.Id = cs.candidate_id
JOIN Tech_Stack t ON cs.stack_id = t.Id
WHERE f.Degree = 'MCA';

-- 15-how many candiates which is having last month

SELECT COUNT(*) AS hired_last_month_count
FROM fellowship_candidate
WHERE Joining_Date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
AND Joining_Date < DATE_ADD(CURDATE(), INTERVAL 1 MONTH);

-- 16- how many week candidate completed in the bridgelabz since joining date candidate id is 2

SELECT TIMESTAMPDIFF(WEEK, f.Joining_Date, CURDATE()) AS weeks_completed
FROM Fellowship_Candidate f
WHERE f.Id = 2;

-- 17-find joining date of candidate if candidate id is 4

SELECT First_Name, Last_Name, Joining_Date
FROM Fellowship_Candidate
WHERE Id = 4;

-- 18-how many week remaining of candidate in the bridglabz from today if candidate id is 5

SELECT Id, CONCAT(First_Name, ' ', Last_Name) AS Candidate_Name, 
(DATEDIFF(CURDATE(), Joining_Date) - (DATEDIFF(CURDATE(), Joining_Date) % 7) - 26) / 7 AS Weeks_Remaining
FROM Fellowship_Candidate
WHERE Id = 5;

-- 19-how many days remaining of candidate in the bridgelabz from today if candidate is is 6

SELECT Id, CONCAT(First_Name, ' ', Last_Name) AS Candidate_Name, DATEDIFF(CURDATE(), Joining_Date) - 180 AS Days_Remaining
FROM Fellowship_Candidate
WHERE Id = 6;

-- 20-find candidates which is deployed

SELECT h.Id, h.First_Name, h.Last_Name 
FROM Hired_Candidate h
JOIN Fellowship_Candidate f ON f.Id = h.Id
WHERE f.candidate_Status = 'Accepted' AND h.status = 'Active';
 
-- 21-find name and other details and name of company which is assign to condidate.

SELECT FC.First_Name, FC.Last_Name, FC.Degree, FC.Hired_Lab as Lab, C.name as Company_Name 
FROM Fellowship_Candidate FC
RIGHT JOIN Company C 
ON FC.creator_user = C.creator_user; 

-- 22-find all condidate and mentors which is related to lab= banglore/mumbai/pune.

SELECT FC.First_Name, FC.Last_Name, L.name 
FROM Fellowship_Candidate FC
JOIN Lab L ON FC.hired_lab = L.name
WHERE L.location IN ('Mumbai');

SELECT M.name, L.name 
FROM Mentor M
JOIN Lab L ON M.lab_id = L.id
WHERE L.location IN ('Pune');

SELECT FC.First_Name as candidates, M.name as mentors
FROM Fellowship_Candidate FC
JOIN Mentor M ON FC.id = M.id
JOIN Lab L ON M.lab_id = L.id
WHERE L.location IN ('Mumbai');

-- 23. find buddy mentors and ideation mentor and which technology assign to perticular candidate if candidate id is 6

SELECT F.Id, F.First_Name AS Candidate, M.name AS Ideation_Mentor,
M2.name AS Buddy_Mentor, TS.tech_name AS Assigned_Technology
FROM Fellowship_Candidate AS F
JOIN Company_Requirement AS C ON F.creator_user = C.creator_user
JOIN Mentor AS M ON C.ideation_engg_id = M.Id
JOIN Mentor AS M2 ON C.buddy_engg_id = M2.Id
JOIN Candidate_Stack_Assignment AS CA ON F.creator_user = CA.creator_user
JOIN Tech_Stack AS TS ON CA.Id = TS.Id
WHERE F.Id = 6;

