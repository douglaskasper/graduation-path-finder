/**
	DEGREE REQUIREMENTS

	One row for each course required under degree.
	These requirements are the introductory/foundation courses on the degree pages http://www.cdm.depaul.edu/academics/Pages/Current/Requirements-MS-in-Computer-Science.aspx
*/

INSERT INTO tblDegreeRequirement(deg_id, crs_id)
SELECT	deg.deg_id, -- degree id
		(	SELECT prq.crs_id
			FROM tblCourse prq
			WHERE prq.crs_department_code = 'CSC'
				AND prq.crs_number = '401') -- prereq course id
FROM tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblDegreeRequirement(deg_id, crs_id)
SELECT	deg.deg_id, -- degree id
		(	SELECT prq.crs_id
			FROM tblCourse prq
			WHERE prq.crs_department_code = 'CSC'
				AND prq.crs_number = '402') -- prereq course id
FROM tblDegree deg
WHERE deg.deg_name = 'Computer Science'
