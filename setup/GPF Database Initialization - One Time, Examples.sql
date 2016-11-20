/**
	DEGREES

	select * from tbldegree
*/

INSERT INTO tblDegree (deg_name, deg_title, deg_description)
SELECT	'Computer Science',
		'MS In Computer Science',
		'DePaul''s graduate Computer Science program is the premier training ground for computing professionals in the Chicago area. Unlike a certificate program, our master''s courses focus on fundamental concepts that remain constant, even as technology changes rapidly. Unlike more research focused institutions, however, our courses emphasize the programmatic application of these fundamental concepts. Students interested in research will find an abundance of advanced topics --- medical imaging, data mining, algorithmic analysis, and scientific computing, to name a few.'

INSERT INTO tblDegree (deg_name, deg_title, deg_description)
SELECT	'Information Systems',
		'MS In Information Systems',
		'The MS in Information Systems fits your career path if it involves running an IT organization or managing information effectively through information systems. In today''s environment, information systems (IS) are planned, operated and maintained not only by IS departments but also by IS-user organizational units. Because of this reality, career opportunities for IS graduates are found in both traditional IS departments and IS-user business units. Moreover, a variety of equipment from aircraft to household electronics frequently use embedded systems. Graduates of IS majors find opportunities in organizations that plan, design and market the functionality of these systems. Thus, our MS-IS emphasizes the balance between technical skills, modeling proficiency, as well as strategic and organizational knowledge for a wide range of IS usage contexts.'

/**
	CONCENTRATIONS

	select * from tblconcentration con
	inner join tbldegree deg on con.deg_id = deg.deg_id
	where deg.deg_name = 'computer science'
*/

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Software and Systems Development',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Theory',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Data Science',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Database Systems',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Artificial Intelligence',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Software Engineering',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Multimedia',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Computer Science'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Business Analysis/System Analysis',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Information Systems'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Business Intelligence',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Information Systems'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Database Administration',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Information Systems'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'IT Enterprise',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Information Systems'

INSERT INTO tblConcentration (con_title, deg_id)
SELECT	'Standard',
		deg.deg_id
FROM dbo.tblDegree deg
WHERE deg.deg_name = 'Information Systems'

/**
	COURSES

	select * from tblcourse
*/

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title, crs_description)
SELECT	'CSC',
		'401',
		'Introduction to Programming',
		'An introduction to programming with a focus on problem solving, structured programming, and algorithm design with a gentle introduction to efficiency. Concepts covered include data types, expressions, variables, assignments, conditional and iterative structures, functions, file input/output, exceptions, namespaces, and recursion. '

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title, crs_description)
SELECT	'CSC',
		'402',
		'Data Structures I',
		'A first course on data structures in Java for graduate students. The course introduces Java programming from within the context of data structures. The course covers arrays, linked lists, stacks and queues, data structures supporting disjoint-set operations, and discusses recursion and performance analysis. The implementation of the basic operations on each data structure are discussed and analyzed in terms of their efficiency.'

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title, crs_description)
SELECT	'CSC',
		'436',
		'Web Applications',
		'This course covers the design and development of modern web applications and their interaction with web services. The primary focus is on client-side web applications using AJAX-techniques to access web services. Possible topics include: HTML5; JavaScript/TypeScript; MVC and single-page application programming models, e.g., AngularJS; programming and security models for browsers; client-side web applications with local storage; data synchronization; HTTP, proxies, and caching; Node.js; RESTful web services.'

-- Add in the rest of the course inserts. Or, bulk insert from file.

/**
	COURSE PREREQUISITES

	select * from tblcourse crs
	inner join tblcourseprerequisite prq on crs.crs_id = prq.crs_id
	where crs.crs_department_code = 'CSC' and crs.crs_number = 402
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

/**
	DEGREE REQUIREMENTS

	One row for each course required under degree.
	These requirements are the introductory/foundation courses on the degree pages http://www.cdm.depaul.edu/academics/Pages/Current/Requirements-MS-in-Computer-Science.aspx

	select * from tblcourse crs
	inner join tbldegreerequirement drq on crs.crs_id = drq.crs_id
	inner join tbldegree deg on drq.deg_id = deg.deg_id
	where deg.deg_name = 'computer science'
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

/**
	CONCENTRATION COURSES

	One row for each course under a concentration.
	Concentration courses can be found on the degree pages http://www.cdm.depaul.edu/academics/Pages/Current/Requirements-MS-in-Computer-Science.aspx

	select * from tblcourse crs
	inner join tblconcentrationcourse cos on crs.crs_id = cos.crs_id
	inner join tblconcentration con on cos.con_id = con.con_id
	where con.con_title = 'software and systems development'
*/

INSERT INTO tblConcentrationCourse(con_id, crs_id)
SELECT	con.con_id, -- concentration id
		(	SELECT prq.crs_id
			FROM tblCourse prq
			WHERE prq.crs_department_code = 'CSC'
				AND prq.crs_number = '436') -- prereq course id
FROM tblConcentration con
WHERE con.con_title = 'Software and Systems Development'

/**
	PREDEFINED ACCOUNTS

	select * from tblaccount
*/

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
	'Chicago',
	'IL',
	'60601',
	'3125550099',
	'A',
	deg.deg_id,
	con.con_id
FROM dbo.tblDegree deg
	INNER JOIN dbo.tblConcentration con ON deg.deg_id = con.deg_id
WHERE con.con_title = 'Theory'

/**
	CLASSES OFFERED

	clo_quarter CHAR(20) NOT NULL, -- FALL, WINTER, SPRING, SUMMERI, SUMMERII, SUMMER10WEEK, DECINTERSESSION
	clo_day_of_week CHAR(5) NOT NULL, -- O = Online, M = Monday, TU = Tuesday, W = Wednesday, TH = Thursday, F = Friday, MW = Mon/Wed, MWF = Mon/Wed/Fri, TUTH = Tues/Thurs
	clo_location CHAR(15) DEFAULT 'ONLINE', -- ONLINE, LOOP, LINCOLNPARK, etc.

	select * from tblclassoffering clo
	inner join tblcourse crs on clo.crs_id = crs.crs_id
*/

INSERT INTO tblClassOffering (crs_id, clo_year, clo_quarter, clo_day_of_week, clo_location)
SELECT	crs.crs_id,
		2016,
		'WINTER',
		'O',
		'ONLINE'
FROM tblCourse crs
WHERE crs.crs_department_code = 'CSC'
	AND crs.crs_number = 401

INSERT INTO tblClassOffering (crs_id, clo_year, clo_quarter, clo_day_of_week, clo_location)
SELECT	crs.crs_id,
		2016,
		'FALL',
		'M',
		'LOOP'
FROM tblCourse crs
WHERE crs.crs_department_code = 'CSC'
	AND crs.crs_number = 402

INSERT INTO tblClassOffering (crs_id, clo_year, clo_quarter, clo_day_of_week, clo_location)
SELECT	crs.crs_id,
		2016,
		'WINTER',
		'M',
		'LOOP'
FROM tblCourse crs
WHERE crs.crs_department_code = 'CSC'
	AND crs.crs_number = 402

INSERT INTO tblClassOffering (crs_id, clo_year, clo_quarter, clo_day_of_week, clo_location)
SELECT	crs.crs_id,
		2016,
		'WINTER',
		'O',
		'ONLINE'
FROM tblCourse crs
WHERE crs.crs_department_code = 'CSC'
	AND crs.crs_number = 402

/**
	PREDEFINED CLASS HISTORY

	select * from tblclasshistory clh
	inner join tblaccount acc on clh.acc_id = acc.acc_id
	where acc.acc_username = 'admin@depaul.edu'
*/

INSERT INTO tblClassHistory (acc_id, clo_id, clh_grade)
SELECT	acc.acc_id,
		(	SELECT MAX(clo.clo_id)
			FROM tblClassOffering clo
				INNER JOIN tblCourse crs ON clo.crs_id = crs.crs_id
			WHERE crs.crs_department_code = 'CSC'
				AND crs.crs_number = 401),
		'A'
FROM tblAccount acc
WHERE acc.acc_username = 'admin@depaul.edu'
