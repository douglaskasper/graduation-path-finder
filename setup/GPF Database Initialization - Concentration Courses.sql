/**
	CONCENTRATION COURSES

	One row for each course under a concentration.
	Concentration courses can be found on the degree pages http://www.cdm.depaul.edu/academics/Pages/Current/Requirements-MS-in-Computer-Science.aspx
*/

INSERT INTO tblConcentrationCourse(con_id, crs_id)
SELECT	con.con_id, -- concentration id
		(	SELECT prq.crs_id
			FROM tblCourse prq
			WHERE prq.crs_department_code = 'CSC'
				AND prq.crs_number = '436') -- prereq course id
FROM tblConcentration con
WHERE con.con_title = 'Software and Systems Development'
