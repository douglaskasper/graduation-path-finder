IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblDegree')
BEGIN
	CREATE TABLE tblDegree (
		deg_id INT IDENTITY(1,1) NOT NULL,
		deg_name VARCHAR(20),
		deg_title VARCHAR(20),
		deg_description VARCHAR(1000),
		PRIMARY KEY (deg_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblConcentration')
BEGIN
	CREATE TABLE tblConcentration (
		con_id INT IDENTITY(1,1) NOT NULL,
		con_title VARCHAR(20),
		PRIMARY KEY (con_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblCourse')
BEGIN
	CREATE TABLE tblCourse (
		crs_id INT IDENTITY(1,1) NOT NULL,
		crs_department_code CHAR(3) NOT NULL,
		crs_number INT NOT NULL,
		crs_title VARCHAR(50),
		crs_description VARCHAR(1000),
		crs_units DECIMAL(3,2) DEFAULT '4.00',
		crs_active CHAR(1) DEFAULT 'Y', -- Y = Active, N = Inactive
		PRIMARY KEY (crs_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblCoursePrerequisite')
BEGIN
	CREATE TABLE tblCoursePrerequisite (
		crs_id INT NOT NULL,
		prq_id INT NOT NULL,
		PRIMARY KEY (crs_id, prq_id),
		FOREIGN KEY (crs_id) REFERENCES tblCourse(crs_id),
		FOREIGN KEY (prq_id) REFERENCES tblCourse(crs_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblDegreeRequirement')
BEGIN
	CREATE TABLE tblDegreeRequirement (
		deg_id INT NOT NULL,
		crs_id INT NOT NULL
		PRIMARY KEY (deg_id, crs_id),
		FOREIGN KEY (deg_id) REFERENCES tblDegree(deg_id),
		FOREIGN KEY (crs_id) REFERENCES tblCourse(crs_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblConcentrationRequirement')
BEGIN
	CREATE TABLE tblConcentrationRequirement (
		con_id INT NOT NULL,
		crs_id INT NOT NULL
		PRIMARY KEY (con_id, crs_id),
		FOREIGN KEY (con_id) REFERENCES tblConcentration(con_id),
		FOREIGN KEY (crs_id) REFERENCES tblCourse(crs_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblAccount')
BEGIN
	CREATE TABLE tblAccount (
		acc_id INT IDENTITY(1,1) NOT NULL,
		acc_username VARCHAR(50) NOT NULL,
		acc_password CHAR(128) NOT NULL,
		acc_first_name VARCHAR(50) NOT NULL,
		acc_last_name VARCHAR(50) NOT NULL,
		acc_street VARCHAR(100),
		acc_city VARCHAR(50),
		acc_state CHAR(2),
		acc_zip CHAR(15),
		acc_phone CHAR(10),
		acc_role VARCHAR(10) NOT NULL DEFAULT 'S', -- A = Admin, F = Faculty, S = Student
		deg_id INT,
		con_id INT,
		PRIMARY KEY (acc_id),
		FOREIGN KEY (deg_id) REFERENCES tblDegree(deg_id),
		FOREIGN KEY (con_id) REFERENCES tblConcentration(con_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblClassOffering')
BEGIN
	CREATE TABLE tblClassOffering (
		clo_id INT IDENTITY(1,1) NOT NULL,
		clo_section_number CHAR(5),
		clo_status VARCHAR(1) DEFAULT 'O', -- O = Open, W = Wait List, C = Canceled.
		clo_year INT NOT NULL,
		clo_quarter CHAR(20), -- Fall, Winter, Spring, SummerI, SummerII, Summer10Week, DecIntersession
		clo_day_of_week CHAR(5),
		clo_location CHAR(15) DEFAULT 'ONLINE', -- ONLINE, LOOP, LINCOLNPARK, etc.
		crs_id INT NOT NULL,
		-- clr_id INT NULL, -- Classroom ID, NULL = Online.
		acc_id_instructor INT NOT NULL,
		PRIMARY KEY (clo_id),
		FOREIGN KEY (crs_id) REFERENCES tblCourse(crs_id),
		FOREIGN KEY (clr_id) REFERENCES tblClassroom(clr_id),
		FOREIGN KEY (acc_id_instructor) REFERENCES tblAccount(acc_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblGPFSession')
BEGIN
	CREATE TABLE tblGPFSession (
		gpf_id INT IDENTITY(1,1) NOT NULL,
		acc_id INT NOT NULL,
		deg_id INT,
		con_id INT,
		gpf_entering_year INT,
		gpf_entering_quarter CHAR(20),
		gpf_classes_per_quarter INT,
		gpf_class_delivery CHAR(2)  DEFAULT 'O', -- C = In Class, O = Online, CO = In Class And Online
		PRIMARY KEY (gpf_id),
		FOREIGN KEY (acc_id) REFERENCES tblAccount(acc_id),
		FOREIGN KEY (deg_id) REFERENCES tblDegree(deg_id),
		FOREIGN KEY (con_id) REFERENCES tblConcentration(con_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblClassHistory')
BEGIN
	CREATE TABLE tblClassHistory (
		acc_id INT NOT NULL,
		clo_id INT NOT NULL,
		clh_grade CHAR(5),
		PRIMARY KEY (acc_id, clo_id),
		FOREIGN KEY (acc_id) REFERENCES tblAccount(acc_id),
		FOREIGN KEY (clo_id) REFERENCES tblClassOffering(clo_id)
	)
END
