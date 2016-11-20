/**
	COURSE PREREQUISITES
*/

INSERT INTO tblCoursePrerequisite (crs_id, prq_id)
SELECT	crs.crs_id, -- course id
		(	SELECT prq.crs_id
			FROM tblCourse prq
			WHERE prq.crs_department_code = 'CSC'
				AND prq.crs_number = '401') -- prereq course id
FROM tblCourse crs
WHERE crs.crs_department_code = 'CSC'
	AND crs.crs_number = 402
