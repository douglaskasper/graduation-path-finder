INSERT INTO tblDegree (
		deg_name,
		deg_title,
		deg_description
)
SELECT
	'Computer Science',
	'MS In Computer Science',
	'DePaul''s graduate Computer Science program is the premier training ground for computing professionals in the Chicago area. Unlike a certificate program, our master''s courses focus on fundamental concepts that remain constant, even as technology changes rapidly. Unlike more research focused institutions, however, our courses emphasize the programmatic application of these fundamental concepts. Students interested in research will find an abundance of advanced topics --- medical imaging, data mining, algorithmic analysis, and scientific computing, to name a few.'

INSERT INTO tblDegree (
		deg_name,
		deg_title,
		deg_description
)
SELECT
	'Computer Science',
	'MS In Computer Science',
	'The MS in Information Systems fits your career path if it involves running an IT organization or managing information effectively through information systems. In today''s environment, information systems (IS) are planned, operated and maintained not only by IS departments but also by IS-user organizational units. Because of this reality, career opportunities for IS graduates are found in both traditional IS departments and IS-user business units. Moreover, a variety of equipment from aircraft to household electronics frequently use embedded systems. Graduates of IS majors find opportunities in organizations that plan, design and market the functionality of these systems. Thus, our MS-IS emphasizes the balance between technical skills, modeling proficiency, as well as strategic and organizational knowledge for a wide range of IS usage contexts.'

INSERT INTO tblConcentration (
		con_title,
		deg_id
)
SELECT
	'Software and Systems Development',
	deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (
		con_title,
		deg_id
)
SELECT
	'Theory',
	deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

-- Add in rest of tblConcentration inserts.

-- Add in tblCourse inserts. or bulk insert from file.

-- Populate tblCoursePrerequisite, one row for each prereq of a course.

-- Populate tblDegreeRequirement, one row for each course required under degree.
-- These are the introductory/foundation courses on the degree page http://www.cdm.depaul.edu/academics/Pages/Current/Requirements-MS-in-Computer-Science.aspx

-- Populate tblConcentrationRequirement, one row for each course under a concentration.
-- Concentration courses can be found on the degree page http://www.cdm.depaul.edu/academics/Pages/Current/Requirements-MS-in-Computer-Science.aspx

INSERT INTO tblAccount (
	acc_username,
	acc_password,
	acc_first_name,
	acc_last_name,
	acc_street,
	acc_city,
	acc_state,
	acc_zip,
	acc_phone,
	acc_role, -- A = Admin, F = Faculty, S = Student
	deg_id,
	con_id
)
SELECT
	'admin@depaul.edu',
	'password',
	'John',
	'Doe',
	'9000 W Western Ave',
	'IL',
	'60601',
	'3125550099',
	'A',
	deg.deg_id,
	con.con_id
FROM dbo.tblDegree deg
	INNER JOIN dbo.tblConcentration con ON deg.deg_id = con.con_id
WHERE deg.deg_name = 'Computer Science'
AND con.con_title = 