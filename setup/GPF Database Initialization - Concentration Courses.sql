/**
	CONCENTRATION COURSES

	One row for each course under a concentration.
	Concentration courses can be found on the degree pages http://www.cdm.depaul.edu/academics/Pages/Current/Requirements-MS-in-Computer-Science.aspx
*/

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '431') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '444') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '489') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '503') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '521') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '525') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '531') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '535') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '547') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '557') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '580') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '591') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE'  AND prq.crs_number = '533') FROM tblConcentration con WHERE con.con_title = 'Theory';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '436') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '438') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '439') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '443') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '448') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '461') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '462') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '471') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '472') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '475') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '534') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '536') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '540') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '548') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '549') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '551') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '552') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '553') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '595') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CNS' AND prq.crs_number = '450') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '690') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '691') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'HCI' AND prq.crs_number = '441') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '441') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '452') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '459') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '525') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '526') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '554') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '560') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '491') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '591') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'TDC' AND prq.crs_number = '478') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'TDC' AND prq.crs_number = '484') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'TDC' AND prq.crs_number = '568') FROM tblConcentration con WHERE con.con_title = 'Software and Systems Development ';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '423') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '424') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '425') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '428') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '433') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '465') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '478') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '481') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '482') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '495') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '529') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '555') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '575') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '578') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '594') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '598') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '672') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '584') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '467') FROM tblConcentration con WHERE con.con_title = 'Data Science';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '433') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '452') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '454') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '478') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '529') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '543') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '549') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '551') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '553') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '554') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '555') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '575') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '589') FROM tblConcentration con WHERE con.con_title = 'Database Systems';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '457') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';


INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '458') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '478') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '480') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '481') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '482') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '495') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '528') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '529') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '538') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '575') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '576') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '577') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '578') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '583') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '587') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '592') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '594') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '584') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GEO' AND prq.crs_number = '441') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GEO' AND prq.crs_number = '442') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '467') FROM tblConcentration con WHERE con.con_title = 'Artificial Intelligence';


INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '430') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '433') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '441') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '452') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '453') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '456') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '457') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '459') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '475') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '477') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '480') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '482') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '491') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '525') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '526') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '529') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '533') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '546') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '549') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '554') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '556') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '560') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '579') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '581') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '582') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '591') FROM tblConcentration con WHERE con.con_title = 'Software Engineering';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '461') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '462') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '450') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '453') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '475') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '476') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '486') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '490') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '575') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '576') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '690') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GAM' AND prq.crs_number = '691') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GPH' AND prq.crs_number = '436') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GPH' AND prq.crs_number = '469') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GPH' AND prq.crs_number = '570') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GPH' AND prq.crs_number = '572') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GPH' AND prq.crs_number = '580') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'HCI' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '456') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '556') FROM tblConcentration con WHERE con.con_title = 'Multimedia';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '421') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '451') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '422') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CNS' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '435') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '485') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '535') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '560') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '424') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '480') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'HCI' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '431') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '455') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '540') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '556') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '565') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '578') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'SE' AND prq.crs_number = '582') FROM tblConcentration con WHERE con.con_title = 'Business Analysis/System Analysis';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '411') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '401') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IT' AND prq.crs_number = '403') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '421') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '451') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '422') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '574') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '423') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '467') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '549') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '424') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '495') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '575') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '584') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'GEO' AND prq.crs_number = '441') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'HCI' AND prq.crs_number = '512') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IPD' AND prq.crs_number = '451') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '452') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '456') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '536') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '550') FROM tblConcentration con WHERE con.con_title = 'Business Intelligence';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '421') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '451') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '422') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '430') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '549') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '454') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '452') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CSC' AND prq.crs_number = '554') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CNS' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IPD' AND prq.crs_number = '451') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '452') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '505') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '536') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '550') FROM tblConcentration con WHERE con.con_title = 'Database Administration';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '424') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '556') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '570') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '535') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'CNS' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'ECT' AND prq.crs_number = '556') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '440') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '483') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '500') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '505') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '506') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '535') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '536') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '540') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '550') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '560') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '565') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '579') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';

INSERT INTO tblConcentrationCourse (con_id, crs_id) SELECT con.con_id, (SELECT prq.crs_id FROM tblCourse prq WHERE prq.crs_department_code = 'IS' AND prq.crs_number = '580') FROM tblConcentration con WHERE con.con_title = 'IT Enterprise';
