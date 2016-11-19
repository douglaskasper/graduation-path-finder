/**
DROP TABLE tblClassHistory
DROP TABLE tblGPFSession
DROP TABLE tblClassOffering
DROP TABLE tblAccount
DROP TABLE tblConcentrationCourse
DROP TABLE tblDegreeRequirement
DROP TABLE tblCoursePrerequisite
DROP TABLE tblCourse
DROP TABLE tblConcentration
DROP TABLE tblDegree
*/

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblDegree')
BEGIN
	CREATE TABLE tblDegree (
		deg_id INT IDENTITY(1,1) NOT NULL,
		deg_name VARCHAR(50),
		deg_title VARCHAR(200),
		deg_description VARCHAR(max),
		PRIMARY KEY (deg_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblConcentration')
BEGIN
	CREATE TABLE tblConcentration (
		con_id INT IDENTITY(1,1) NOT NULL,
		con_title VARCHAR(50),
		deg_id INT NOT NULL,
		PRIMARY KEY (con_id),
		FOREIGN KEY (deg_id) REFERENCES tblDegree(deg_id),
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
		crs_description VARCHAR(max),
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
					AND  TABLE_NAME = 'tblConcentrationCourse')
BEGIN
	CREATE TABLE tblConcentrationCourse (
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
		acc_username VARCHAR(100) NOT NULL,
		acc_password VARCHAR(100) NOT NULL,
		acc_first_name VARCHAR(50) NOT NULL,
		acc_last_name VARCHAR(50) NOT NULL,
		acc_street VARCHAR(200),
		acc_city VARCHAR(50),
		acc_state CHAR(2),
		acc_zip CHAR(15),
		acc_phone CHAR(10),
		acc_role VARCHAR(1) NOT NULL DEFAULT 'S', -- A = Admin, F = Faculty, S = Student
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
		crs_id INT NOT NULL,
		clo_id INT IDENTITY(1,1) NOT NULL,
		clo_year INT NOT NULL,
		clo_quarter CHAR(20) NOT NULL, -- FALL, WINTER, SPRING, SUMMERI, SUMMERII, SUMMER10WEEK, DECINTERSESSION
		clo_day_of_week CHAR(5) NOT NULL, -- O = Online, M = Monday, TU = Tuesday, W = Wednesday, TH = Thursday, F = Friday, MW = Mon/Wed, MWF = Mon/Wed/Fri, TUTH = Tues/Thurs
		clo_location CHAR(15) DEFAULT 'ONLINE', -- ONLINE, LOOP, LINCOLNPARK, etc.
		clo_section_number CHAR(5),
		clo_status VARCHAR(1) DEFAULT 'O', -- O = Open, W = Wait List, C = Canceled.
		acc_id_instructor INT,
		PRIMARY KEY (clo_id),
		FOREIGN KEY (crs_id) REFERENCES tblCourse(crs_id),
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
		gpf_class_delivery CHAR(2) DEFAULT 'O', -- C = In Class, O = Online, CO = In Class And Online
		PRIMARY KEY (gpf_id),
		FOREIGN KEY (acc_id) REFERENCES tblAccount(acc_id),
		FOREIGN KEY (deg_id) REFERENCES tblDegree(deg_id),
		FOREIGN KEY (con_id) REFERENCES tblConcentration(con_id)
	)
END

IF NOT EXISTS (	SELECT * FROM INFORMATION_SCHEMA.TABLES 
				WHERE TABLE_SCHEMA = 'dbo' 
					AND  TABLE_NAME = 'tblCourseHistory')
BEGIN
	CREATE TABLE tblCourseHistory (
		acc_id INT NOT NULL,
		crs_id INT NOT NULL,
		clh_grade CHAR(5),
		PRIMARY KEY (acc_id, crs_id),
		FOREIGN KEY (acc_id) REFERENCES tblAccount(acc_id),
		FOREIGN KEY (crs_id) REFERENCES tblCourse(crs_id)
	)
END