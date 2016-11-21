/**
	COURSE PREREQUISITES
*/

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 402;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '402') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 403;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 406;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '406') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 407;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '402') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 407;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '400') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 421;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 421;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 423;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '423') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 424;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '423') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 425;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'MAT' AND prq.crs_number = '456') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 425;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '423') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 428;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 431;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 433;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 433;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '411') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 433;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 435;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 435;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '435') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 436;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '447') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 436;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 438;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 439;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 440;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 443;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '400') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 444;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 444;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 447;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '406') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 447;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '447') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 448;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 452;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '451') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 452;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '455') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 452;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 452;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '411') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 452;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 453;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '451') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 454;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 454;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '455') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 454;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 455;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 457;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 458;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '400') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 461;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 461;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '406') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 461;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '491') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 462;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '461') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 462;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 465;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 465;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '411') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 465;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 471;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 471;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 472;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 472;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 475;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '467') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 478;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 478;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 480;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '412') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 481;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'MAT' AND prq.crs_number = '220') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 485;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '400') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 487;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '444') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 489;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '421') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 489;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '423') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 495;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '400') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 495;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SOC' AND prq.crs_number = '412') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 495;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '421') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 503;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '402') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 521;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '404') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 521;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '423') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 521;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '421') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 525;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '481') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 528;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '424') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 529;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '467') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 529;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '584') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 529;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '578') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 529;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '421') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 531;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '450') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 531;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '450') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 534;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '447') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 535;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '435') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 536;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '528') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 538;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '471') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 540;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '531') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 541;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '531') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 542;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '541') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 542;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 543;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '455') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 543;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '443') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 546;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '448') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 548;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 549;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '449') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 550;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '451') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 550;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 551;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '435') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 551;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'TDC' AND prq.crs_number = '405') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 551;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'TDC' AND prq.crs_number = '463') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 551;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '450') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 552;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '407') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 552;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 553;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 554;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '454') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 554;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '401') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 555;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 555;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '455') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 555;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '467') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 555;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '478') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 555;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '439') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 557;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '404') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 559;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '431') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 559;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '521') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 559;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '425') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 559;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '695') FROM tblCourse crs WHERE crs.crs_department_code = 'CSC'AND crs.crs_number = 696;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '421') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 422;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '451') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 422;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '421') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 435;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 435;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '403') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 467;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '422') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 485;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 485;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'PM' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 485;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 500;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'PM' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 500;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '477') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 500;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '505') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 506;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '433') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 533;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '477') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 535;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '565') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 535;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ACCT' AND prq.crs_number = '500') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 535;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 535;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'PM' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 535;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '455') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 535;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '451') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 549;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 549;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '455') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 549;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '451') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 550;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 550;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '455') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 550;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '422') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 553;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '555') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 553;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 553;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 556;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'PM' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 556;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 570;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'PM' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 570;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 574;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '453') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 574;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'PM' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 574;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'MIS' AND prq.crs_number = '674') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 574;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '451') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 574;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'PM' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 579;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 579;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '424') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 590;

INSERT INTO tblCoursePrerequisite (crs_id, prq_id) SELECT crs.crs_id, ( SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC'AND prq.crs_number = '428') FROM tblCourse crs WHERE crs.crs_department_code = 'IS' AND crs.crs_number = 590;

