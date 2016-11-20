BEGIN TRANSACTION

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)
SELECT 'CSC','400','DISCRETE STRUCTURES FOR COMPUTER SCIENCE','This course covers the basic mathematical tools essential for solving problems in computer science. The mathematical topics are presented with emphasis on their applications in computer science. The topics covered include: logic and set theory, relations, functions, graphs, and counting and probability.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','401','INTRODUCTION TO PROGRAMMING','An introduction to programming with a focus on problem solving, structured programming, and algorithm design with a gentle introduction to efficiency. Concepts covered include data types, expressions, variables, assignments, conditional and iterative structures, functions, file input/output, exceptions, namespaces, and recursion. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','402','DATA STRUCTURES I','A first course on data structures in Java for graduate students. The course introduces Java programming from within the context of data structures. The course covers arrays, linked lists, stacks and queues, data structures supporting disjoint-set operations, and discusses recursion and performance analysis. The implementation of the basic operations on each data structure are discussed and analyzed in terms of their efficiency. PREREQUISITE(S): CSC 401';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','403','DATA STRUCTURES II','This is the second course on data structures in Java for graduate students. The course covers trees, heaps, associative arrays, hash tables, tries, and data structures for representing graphs. The implementation of the basic operations on each data structure are discussed and analyzed in terms of their efficiency. PREREQUISITE(S): CSC 402';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','404','ACCELERATED C++','This introductory graduate course covers the essentials of C++ programming. Topics include encapsulation, inheritance, polymorphism, dynamic memory allocation, casting, pointer arithmetic, operator overloading, templates, and the Standard Template Libraries. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','406','SYSTEMS I','An introductory graduate course on computer systems topics, focusing on machine-level programming and architecture and their relevance for application programming. Information representations, assembly language and debuggers, processor architecture, program optimization, memory hierarchy and caching. Students are recommended to finish CSC 400 before enrolling in this course. PREREQUISITE(S): CSC 401';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','407','SYSTEMS II','An introductory graduate course on computer systems topics, focusing on operating systems components and their relevance for application programming. Linking, processes, virtual memory, dynamic memory allocation, system level I/O, networking and network programming, concurrent servers and web services. PREREQUISITE(S): CSC 406 and CSC 402';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','412','TOOLS AND TECHNIQUES FOR COMPUTATIONAL ANALYSIS','Use of mathematical software to explore basic concepts in linear algebra and calculus. Scripting for symbolic and computational processing. Emphasis is on applications in computer science, finance, data mining, and computer vision. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','421','APPLIED ALGORITHMS AND STRUCTURES','This course covers techniques for designing and analyzing algorithms and structures in the context of computer application development. Examples will come from Internet, WWW, database, and computer system applications. Fundamental topics such as running-time analysis, searching and sorting within various structures, divide-and-conquer and dynamic programming will be covered. PREREQUISITE(S): CSC 400 and CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','423','DATA ANALYSIS AND REGRESSION','Multiple regression and correlation, residual analysis, analysis of variance, and robustness. These topics will be studied from a data analytic perspective, supported by an investigation of available statistical software. PREREQUISITE(S): IT 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','424','ADVANCED DATA ANALYSIS','The course will teach advanced statistical techniques to discover information from large sets of data. The course topics include visualization techniques to summarize and display high dimensional data, dimensional reduction techniques such as principal component analysis and factor analysis, clustering techniques for discovering patterns from large datasets, and classification techniques for decision making. The methods will be implemented using standard computer packages. PREREQUISITE(S): CSC 423 or consent of instructor.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','425','TIME SERIES ANALYSIS AND FORECASTING','The course introduces students to statistical models for time series analysis and forecasting. The course topics include: autocorrelated data analysis, Box-Jenkins models (autoregressive, moving average, and autoregressive moving average models), analysis of seasonality, volatility models (GARCH-type, GARCH-M type, etc.), forecasting evaluation and diagnostics checking. The course will emphasize applications to financial data, volatility modeling and risk management. Real examples will be used throughout the course. PREREQUISITE(S): CSC 423 or MAT 456 or consent of instructor';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','426','RESEARCH METHODS AND PRACTICE IN COMPUTING','The course is intended to help students understand the process of and issues related to doing scientific research in computing or related areas. Topics covered include how to develop an effective research proposal, how to critically evaluate or review a scientific research paper, how to use appropriate research methods in scientific research, key elements of a publishable paper or a dissertation, ethics and professional responsibility in scientific research. The course is intended for PhD students in Computer and Information Sciences or for students who are interested in pursuing a research career. PREREQUISITE(S): PhD status or consent of instructor.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','428','DATA ANALYSIS FOR EXPERIMENTERS','The analysis of experiments in the computing science with special emphasis on the use of statistical software and interpretation of generated output. PREREQUISITE(S): CSC 423.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','431','SCIENTIFIC COMPUTING','This course presents fundamental numerical algorithms for solving problems in scientific computing and computational finance. Areas covered include: error analysis, computer arithmetic, linear algebra, optimization problems, numerical integration (solvers), ordinary differential equations (ODE). The emphasis of the course is on the design of the algorithms, and their analysis. Algorithms will be implemented using mathematical software. PREREQUISITE(S): (CSC 401 and two quarters of calculus) or instructor permission';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','433','SCRIPTING FOR DATA ANALYSIS','Data access and transformation with modern statistical software such as SAS and R. Report writing, data graphing and visualization, writing macros and functions to automate tasks and statistical analyses. PREREQUISITE(S): IT 403 and (CSC 401 or IT 411)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','435','DISTRIBUTED SYSTEMS I','An introduction to distributed systems.Topics may include: architecture of distributed systems; networking; datagram-oriented and stream-oriented protocols; network programming (for example, the sockets API; remote procedure call and remote method invocation; processes and threads; code migration; software agents; naming of non-mobile and mobile entities; cryptography and security. PREREQUISITE(S): CSC 403 and CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','436','WEB APPLICATIONS','This course covers the design and development of modern web applications and their interaction with web services. The primary focus is on client-side web applications using AJAX-techniques to access web services. Possible topics include: HTML5; JavaScript/TypeScript; MVC and single-page application programming models, e.g., AngularJS; programming and security models for browsers; client-side web applications with local storage; data synchronization; HTTP, proxies, and caching; Node.js; RESTful web services. PREREQUISITE(S): CSC 435 and CSC 447';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','438','FRAMEWORK FOR WEB APPLICATION DEVELOPMENT','This course introduces concepts, techniques, technologies and APIs for web application development. The main focus of the course is on the Model-View-Controller design pattern employed by modern full-stack web frameworks. Concepts and techniques covered include client/server programming, database abstraction APIs, and asynchronous javascript. Examples of full-stack MVC frameworks include Ruby-on-Rails (written in Ruby), Django and TurboGears (written in Python). PREREQUISITE: CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','439','COMPUTER SECURITY','This course covers core principles of computer security. Topics include : user authentication; access control (discretionary, mandatory, role-based; security auditing; database security; software security, common vulnerabilities, and secure coding practices; malicious software; and operating system security. Prerequisite(s): CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','440','CRYPTOLOGY','Introduction to the methods of cryptography and cryptanalysis. Topics include classical cryptography (codes, monoalphabetic and polyalphabetic substitution ciphers, transposition ciphers), modern block ciphers (such as DES, AES), and public key cryptography (such as RSA). Optional topics include zero-knowledge protocols, information theory, coding theory, error-correcting codes, steganography, stream ciphers, hashing algorithms, quantum cryptography, elliptic curve cryptography, and history. PREREQUISITE(S): CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','443','INTRODUCTION TO OPERATING SYSTEMS','An advanced course on operating system design and implementation. Process management and scheduling, memory management, file systems, device drivers, access control, and virtualization will be covered. The emphasis of the course will be on implementing components of a functional operating system. PREREQUISITE: CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','444','AUTOMATA THEORY AND FORMAL GRAMMARS','An introduction to the most important abstract models of computation and their applications: finite state machines and pushdown automata. Explores the relationship between regular expressions and formal expressions and automata. PREREQUISITE(S): CSC 400 and CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','447','CONCEPTS OF PROGRAMMING LANGUAGES','Programming paradigms and language concepts: functional programming; comparison of object-oriented languages; type systems for functional and object-oriented languages; runtime systems for functional and object-oriented languages. A variety of programming languages will be used to illustrate concepts, e.g., JavaScript, Ruby, Scala, Scheme. PREREQUISITE(S): CSC 403 and CSC 406';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','448','COMPILER DESIGN','Design and structure of high level languages. Lexical scan, top down and bottom up syntactic analysis. Syntax directed translation and LR(k) grammars. PREREQUISITE(S): CSC 447';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','451','DATABASE DESIGN','Requirement analysis, conceptual design, logical design and implementation of relational databases. Emphasis will be on E-R modeling and E-R mapping, along with basic normalization and SQL for database implementation. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','452','DATABASE PROGRAMMING','Programming in a large-scale relational database environment using procedural languages. Topics covered in the course include: procedural extension of query languages, runtime error handling, subprograms (procedures and functions), packages, database triggers, dynamic query language. Optional topics include transaction management, reliability, and security. PREREQUISITE(S): (CSC 453 or CSC 451 or CSC 455) and (CSC 401 or IT 411)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','453','DATABASE TECHNOLOGIES','A core graduate course in database design and implementation. Topics include database implementation and queries in SQL, logical design or relational databases, storage and indexes, database programming, and emerging database models. PREREQUISITE(S): CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','454','DATABASE ADMINISTRATION AND MANAGEMENT','This course is designed to give students a comprehensive foundation in database administration and management. The course provides a conceptual understanding of the database architecture and how its components work and interact with one another. Topics covered in this course include: database architecture, capacity planning, installation and maintenance, network configuration, security management, utilities and tools, industry standards and guidelines, database management techniques and practices. PREREQUISITE(S): CSC 451 or CSC 453 or CSC 455';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','455','DATABASE PROCESSING FOR LARGE-SCALE ANALYTICS','The course covers core concepts of database systems with focus on applications in large-scale analytics. Topics include relational databases, scheme normalization, SQL queries for data integration and data cleaning, database programming for ETL, and nontraditional database systems for unstructured data. PREREQUISITE(S): CSC 401';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','457','EXPERT SYSTEMS','A study of the development of expert systems. Students will use commercial packages to develop standalone and embedded expert systems. Topics will include rule-based systems, decision trees, forward and backward chaining, inference, reasoning with uncertainty, and intelligent agents. PREREQUISITE(S): CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','458','SYMBOLIC PROGRAMMING','Concepts of symbolic programming as embodied in the language LISP. Basic data and control structures of LISP: symbolic expressions, the interpreter, functions, recursion, iteration. Techniques for prototyping and building conceptually advanced systems in an environment that encourages procedural and data abstraction. Advanced topics may include Prolog, intelligent tutoring systems, intelligent agents, and natural language processing. Assignments will focus on basic AI techniques, but the class is intended for anyone who will need to rapidly develop large complex systems. PREREQUISITE(S): CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','461','OPTIMIZED C++','This programming class will focus on developing software to efficiently use the fixed CPU power and resources that are found in today console and mobile devices. This course will use real-world examples that demonstrate performance and optimization issues that software architects face in software development. These problems include: performance enhancements through extended matrix instruction set, dynamic memory usages, performance related to increasing run-time systems to very large scale, C++ language enhancements and extensions, algorithms, streaming and profiling. PREREQUISITE(S): CSC 400 and CSC 403 and CSC 406';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','462','C++ MULTITHREADING','Software architecture of applied C++ concurrency and multithreading fundamentals. Basic threading concepts: process model, threads, stacks, fibers, mutexes, semaphores, atomics and events. Leveraging advanced C++ language features relating to the memory model and the threading support in large multithreaded architectures. Architecting lock-based and lock-free concurrent data structures in applications. Designing a threaded management system to control the access and reuse of threads in applications. Designing multithreaded architecture for real-time performance. PREREQUISITE(S): GAM 491 or CSC 461';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','465','DATA VISUALIZATION','An introduction to data visualization techniques to enhance the exploration and analysis of large data sets from a wide range of fields including commercial, financial, medical, scientific and engineering applications. Topics include visual encoding of numeric data, graphical integrity and effective visualization design, visualizing distributions and correlation, false-color techniques for feature extraction and enhancement, basic network visualization and graph layout, isosurface generation, geospatial visualization and volumetric rendering techniques. The course explores both existing visualization software packages and code interfaces for data visualization. PREREQUISITE(S): IT 403 and (CSC 401 or IT 411)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','471','MOBILE APPLICATION DEVELOPMENT FOR IOS','This course introduces the core issues associated with application development for mobile devices using the iOS platform. Students will learn the Swift language, the XCode IDE, UIKit and other frameworks, the elements and architecture of the user interfaces, and more. Students will be exposed to the iOS system architecture including memory management, MVC, delegates and threads. Topics will also include understanding and handling of multi-touch events, gestures, and motion events. PREREQUISITE(S): CSC 403 and CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','472','MOBILE APPLICATION DEVELOPMENT FOR ANDROID','This course introduces the core issues associated with application development for mobile devices using the Android platform. Students will learn the Eclipse IDE, frameworks, the elements and architecture of user interfaces, graphics, and more. Students will be exposed to the Android system architecture, including Views, Widgets, Resources, Adapters, Intents and Activities. Topics will also include understanding and handling of threads, multi-touch events, gestures, and motion events. PREREQUISITE(S): CSC 403 and CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','475','INTRODUCTION TO ROBOTICS','An introduction to the field of Robotics. Topics include history of robotics, kinematics, control theory, and sensor theory. A large portion of class time will be lab based, building and programming robots using the Lego Mindstorms NXT Robotics Kit. The programming will be using a C derivative and knowledge of C and general systems concepts is required. PREREQUISITES: CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','478','PROGRAMMING MACHINE LEARNING APPLICATIONS','The course will focus on the implementations of various data mining and machine learning techniques using a high-level programming language. Students will have hands on experience developing both supervised and unsupervised machine learning algorithms and will learn how to employ these techniques in the context of popular applications including automatic personalization, recommender systems, searching and ranking, text mining, group and community discovery, and social media analytics. PREREQUISITE(S): IS 467 and CSC 401';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','480','ARTIFICIAL INTELLIGENCE I','An in-depth survey of important concepts, problems, and techniques in artificial intelligence, including search, knowledge representation, logical reasoning, and reasoning with uncertainty. A particular focus and a unifying theme of the course will be the concept of intelligent agents. No prior knowledge of AI is required. The course is particularly suitable for graduate and advanced undergraduate students who want to gain the technical background necessary to build intelligent systems, or who want to prepare for more advanced work in AI. The concepts and techniques learned in this course will be directly applicable to many other areas of computer science including software design, distributed systems, databases, and information management and retrieval. PREREQUISITE(S): CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','481','INTRODUCTION TO IMAGE PROCESSING','The course is a prerequisite for more advanced Visual Computing (VC) courses and the students will be challenged to implement VC algorithms for real world applications. The topics covered in the course include: components of an image processing system and its applications, elements of visual perception, sampling and quantization, image enhancement by histogram equalization, color spaces and transformations, introduction to segmentation (Edge detection), and morphological image processing. PREREQUISITE(S): CSC 412 or consent of instructor';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','482','APPLIED IMAGE ANALYSIS','Fundamentals of computational image analysis will be explored in terms of its two most important components, image information extraction and modeling of image patterns. These components will be studied in the context of image representation, segmentation, classification, retrieval and recognition. The course will be useful for students interested in image analysis related to areas such as image databases, multimedia management, animation, GIS, computer graphics, medical imaging, remote sensing and robotics. Specific topics include, but are not limited to segmentation, multi-scale representation, shape analysis, texture analysis, Fourier analysis, wavelets, Gabor and fractal analysis, template matching, and object recognition. PREREQUISITE(S) CSC 481';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','485','NUMERICAL ANALYSIS','Use of a digital computer for numerical computation. Error analysis, Gaussian elimination and Gauss-Seidel method, solution of nonlinear equations, function evaluation, approximation of integrals and derivatives, Monte Carlo methods. PREREQUISITE(S): MAT 220 and a programming course.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','487','OPERATIONS RESEARCH I:LINEAR PROGRAMMING','Linear Programming. The Linear Programming problem and its dual; the simplex method; transportation and warehouse problems; computer algorithms and applications to various fields. PREREQUISITE(S): CSC 400 and Linear Algebra';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','489','THEORY OF COMPUTATION','Advanced topics in the mathematical foundations of computation. Topics may include random access and Turing machines, recursive functions, algorithms, computability and computational complexity, intractable problems, NP-complete problems. PREREQUISITE(S): CSC 444 or CSC 421.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','495','SOCIAL NETWORK ANALYSIS','This course is an introduction to the concepts and methods of social network analysis. Students will learn to extract and manage data about network structure and dynamics, and to analyze, model and visualize such data. Students will use software tools to model and visualize network structure and dynamics. Specific network applications to be discussed include online social networks, collaboration networks, and communication networks. PREREQUISITE(S): CSC 423 or CSC 400 or SOC 412';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','500','RESEARCH COLLOQUIUM','The research colloquium consists of weekly talks by a variety of speakers including faculty, students, and guests from the academic and business communities. The lectures feature new creative and scholarly works that encompass the disciplines and areas of interest of the School of Computing. Student evaluation is based on attendance as well as an online journal with reflections on each of the presentations. The educational objectives are to expose students to creative and scholarly research at DePaul and elsewhere, and to engage students in the thought process of identifying and solving challenging research problems. PREREQUISITE(S): None (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','503','PARALLEL ALGORITHMS','Development, implementation, and applications of parallel algorithms. Models of parallel computation. Parallel sorting, searching and graph algorithms, as well as other parallel algorithms, will be studied and implemented on both simulated and actual parallel machines. PREREQUISITE(S): CSC 421';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','521','MONTE CARLO ALGORITHMS','A course about the use of random numbers for numerical computation with particular emphasis on implementation issues and applications in science and finance. Covered topics include: pseudo random number generators, the inversion method, the accept-reject method, discrete event simulations, multi-dimensional integration, the Metropolis and the Bootstrap algorithms. PREREQUISITE(S): (CSC 402 or CSC 404) and CSC 423 or consent of instructor';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','525','COMBINATORIAL OPTIMIZATION','This course defines and introduces the concepts and techniques needed to formulate and model optimization problems. A set of fundamental problems in combinatorial optimization will be covered together with their applications. The emphasis will be on the design and analysis of algorithms for such problems. The computational complexity of this set of problems (easy/hard to solve/approximate) will be discussed, and techniques for coping with intractable problems will be introduced. PREREQUISITE(S): CSC 421.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','528','COMPUTER VISION','Computer Vision techniques for analysis of patterns in visual images and videos of 2D and 3D scenes will be explored with the goal of interpreting, understanding, and reconstructing 3D scenes. Topics to be covered include image formation and representation, 2D and 3D feature extraction, camera calibration, reconstruction of depth based on stereo, shading, focus, texture, and geometry, object detection and tracking, motion analysis, analytical performance characterization, and 3D recognition of objects and scenes using statistical and model-based techniques. The course will be useful for students interested in computer vision related areas such as robotics, remote sensing, and medical imaging. A significant part of the course will be dedicated to the discussion of articles recently published in the literature. PREREQUISITE(S): CSC 481';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','529','ADVANCED DATA MINING','The course is for students with prior background in data mining or machine learning techniques, and covers more advanced modeling techniques, including ensemble learning, extended linear models such as support vector machines, probabilistic graphical models, mixture and latent variable models, matrix factorization and link analysis. Application of the models will be presented in popular domains such as Web and social media analytics, text mining, crime analysis, community discovery, and health informatics. PREREQUISITE(S): CSC 424 and (IS 467 or ECT 584 or CSC 578)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','531','INTRODUCTION TO BIOINFORMATICS','An introduction to the field of Bioinformatics, which is computational modeling of biological and biochemical processes. Some programming in Java will be involved. Little biological knowledge will be assumed: any required will be taught in the course. Topics will include genomics, biological databases, sequence alignment (longest common subsequence), phylogenetic trees, and protein folding. Prerequisites: CSC 421 and SE 450';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)



SELECT 'CSC','534','SOFTWARE DEVELOPMENT FOR LIMITED AND EMBEDDED DEVICES','This course will focus on the unique aspects, tools, and techniques of developing software applications for limited and embedded devices, such as set-top boxes and smart cards. Formerly CSC 542. PREREQUISITE(S): SE 450';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','535','FORMAL SEMANTICS OF PROGRAMMING LANGUAGES','Methods of formal semantics. Lambda-calculus. Lattices and domains. Reflexive domains. Formal semantics of the lambda-calculus. Languages with state. Interpretation functions. Expressions and environments. Command and stores. Control structures and continuations. PREREQUISITE(S): CSC 447.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','536','DISTRIBUTED SYSTEMS II','An intermediate course on distributed systems. Topics may include: clock synchronization; mutual exclusion; distributed transactions; consistency models; distribution and consistency protocols; failure models; achieving fault tolerance; distributed object-based systems; distributed file systems. PREREQUISITE(S): CSC 435';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','538','VISION SYSTEMS','Vision Systems will cover the geometry of computer vision as well as a survey of working vision systems to include 1) Content-based Image Retrieval Systems; 2) Object Detection and Tracking Systems; 3) Medical Visual Systems; 4) Robotic Navigation Systems. PREREQUISITE(S): CSC 528';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','540','MOBILE APPLICATION DEVELOPMENT II','This course will cover advanced topics in mobile and wireless application development. The topics covered will be made explicit by the course instructor when the course is offered. PREREQUISITE(S): CSC 471';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','541','INTRODUCTION TO PROTEOMICS','An introduction to the field of Proteomics, continuing in more depth and detail from the prerequisite course Introduction to Bioinformatics. Proteomics is computational modeling of biological and biochemical processes related to the Proteome. The Proteome is the set of proteins expressed by a cell in a specific tissue at a specific point in its life. Some programming in Java will be involved. The only biological knowledge required is that taught in the prerequisite course. Topics will include mass spectrometry analysis of proteins, protein folding, and proteomic databases PREREQUISITE(S): CSC531';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','542','RESEARCH PRACTICUM IN COMPUTATIONAL BIOLOGY','An advanced course in Bioinformatics that draws on and enhances the information learned in CSC 531 Introduction to Bioinformatics, CSC 541 Introduction to Proteomics, and on all computer science classes. The student will spend 15 hours each week during the quarter in the laboratory of a biological or biochemical research scientist at a suitable research laboratory determined by the instructor. The student will work in the biology research group performing the computational components. The student will be able to take this course several times, working in different types of laboratories. The course title in the transcript will reflect the work performed, and will be different each time this course is taken. PREREQUISITE(S): CSC 531, CSC 541 AND permission of instructor';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','543','SPATIAL DATABASES & GEOGRAPHIC INFORMATION SYSTEMS','This course considers how spatial databases work within a GIS, how data is structured, stored, indexed, retrieved, and displayed. Other topics may include fuzzy spatial databases, temporal spatial databases, and multiple criteria spatial decision making. The class will consist of hands-on work with commercial products, as well as investigating the state of-the art research in the field. Prerequisites: CSC 453 or CSC 455';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','546','OPERATING SYSTEMS DESIGN','A project/seminar oriented course examining the details of the design of operating systems. The ideas from CSC 446 will be extended and incorporated into the design details. PREREQUISITE(S): CSC 443.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','547','ADVANCED TOPICS IN PROGRAM LANGUAGES','A project-based course on advanced topics related to programming languages and programming environments. The course does not have any formal exams or homework assignments, but participants are expected to read papers on current research, actively participate in discussions, and complete a significant course project. PREREQUISITE(S): Instructor consent required.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','548','ADVANCED COMPILER DESIGN','Emphasis on practical problems in implementing compilers, data flow analysis, code optimization, error analysis. Discussion of compiler generators. As a class project, students will write a compiler. PREREQUISITE(S): CSC 448.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','549','DATABASE SYSTEM IMPLEMENTATION','This is an advanced database course that covers issues in DBMS implementation. Topics covered in this course include: physical data organizations, indexing and hashing, query processing and optimization, database recovery techniques, transaction management, concurrency control, and security. PREREQUISITE(S): CSC 453';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','550','OBJECT-ORIENTED DATABASES','(No Longer Offered) Introduction to object-oriented concepts: abstract data typing, inheritance, object identity. Architecture, modeling and design for object-oriented databases. Query languages, integrity, long-duration transactions, concurrency, recovery and versioning in object-oriented databases. Brief survey of commercial and research prototypes of object-oriented database management systems. PREREQUISITE(S): CSC 449 or CSC 451.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','551','DISTRIBUTED DATABASE SYSTEMS','Distributed database architecture, distributed database design, distributed query processing, query decomposition and optimization of distributed queries, distributed transaction management and concurrency control, distributed DBMS reliability, distributed database operating systems. Distributed multidatabase systems. Client/Server database systems. PREREQUISITE(S): CSC 453 and (CSC 435 or TDC 405 or TDC 463)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','552','CONCURRENT SOFTWARE DEVELOPMENT','Fundamentals and techniques of developing concurrent object-oriented applications, using a patterns-based approach. Concepts covered include: threads, synchronization and object locking, thread blocking and deadlock, safety and liveness, state-dependent action and concurrency control. Formerly SE 552. PREREQUISITE(S): SE 450 and CSC 407';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','553','ADVANCED DATABASE CONCEPTS','An introduction to advanced selected topics in databases. The topics include: intelligent and deductive databases, temporal databases, multimedia databases, spatial and geographic databases, fuzzy databases, mobile databases, data mining and data warehousing, as well as emerging issues and concepts in database design, implementation and management. PREREQUISITE(S): CSC 453.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','554','ADVANCED DATABASE MANAGEMENT','In this class, we will discuss concepts, technologies, guiding principles, processes and best practices in managing database environment to meet high availability, scalability, and compliance needs. Organizations with business critical applications must reduce their risk of downtime, manage database environment efficiently and ensure data meets compliance requirements effectively. IT now has additional responsibilities to secure and manage information in alignment with legal, records management and regulations. This class explores methods and techniques to achieve the availability needs and also focuses on how to protect the database against disasters by maintaining multiple copies of the databases in separate locations, synchronized in real-time. Students learn to design and manage key business resumption functions including disaster recovery plans and business continuity plans. Data governance challenges will be discussed along with solutions including data life cycle management, preservation, retention, and disposition. Prerequisite(s): CSC 453 or CSC 454';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','555','MINING BIG DATA','Introduction to fundamentals of distributed file systems and map-reduce technology (e.g., Hadoop; tuning map-reduce performance in a distributed network. Algorithms and tools for mining massive data sets and discussion of current challenges. Applications in clustering, similarity search, classification, data warehousing (e.g., Hive), machine learning (e.g., Mahout). PREREQUISITE(S): CSC 401 and ( CSC 453 or CSC 455) and (IS 467 or CSC 478)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','557','FOUNDATIONS OF COMPUTER SECURITY','This course provides an overview of foundational techniques in the specification and verification of computer systems in the presence of malicious attackers. Topics may include: formal models of interaction, attacker models, robust safety properties such as confidentiality and authenticity, information flow properties such as noninterference, and tools such as model checkers, type checkers and theorem provers. Formerly 557. PREREQUISITE(S): CSC 439';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','559','SOFTWARE ENGINEERING FOR FINANCIAL MARKETS','This course focuses on software engineering issues in creating a financial engine that drives automation and execution in a financial market. The course will cover different types of financial engines from back-office to front-office, exchange matching engines, data gathering engines, trading engines and straight through processing. The emphasis will be on the engines themselves rather than the financial models beneath them. Students will be required to work individually and/or in teams and create a financial engine. This is a project course and it will put students in the role of a domain architect who will need the skills required to communicate with financial traders and software engineers at the same time. PREREQUISITE(S): CSC 404 and (CSC 431 or CSC 521 or CSC 425)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','575','INTELLIGENT INFORMATION RETRIEVAL','Examination of the design, implementation, and evaluation of information retrieval systems. The focus is on the underlying retrieval models, algorithms, and system implementations. Also examined is how an effective information search and retrieval is interrelated with the organization and description of information to be retrieved. Topics include: automatic indexing; thesaurus generation; Boolean, vector-space, and probabilistic models; clustering and classification; information filtering; distributed IR on the WWW; intelligent information agents; IR system evaluation; information visualization; and natural language processing in IR. Throughout the course, current literature from the viewpoints of both research and practical retrieval technologies both on and off the World Wide Web will be examined. PREREQUISITE(S): CSC 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','576','COMPUTATIONAL ADVERTISING','Computational advertising is the problem of finding the best advertisement for a given user in a given on-line context. It is a complex and emerging area at the intersection of quantitative marketing, web search, data mining, recommendation, optimization, and algorithmic game theory. Students will read current scientific papers and explore a range of models both mathematically and empirically. Students can choose from three types of final course projects: implementation projects, research papers, or data analysis projects. Prerequisite(s): IS 467 or CSC 478 or ECT 584';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','577','RECOMMENDER SYSTEMS','Recommender systems offer personalized access to online information in product catalogs, social media networks, and document collections, among other applications. This class will introduce students to a range of approaches for building recommender systems including collaborative, content-based, knowledge-based, and hybrid methods. Students will implement recommendation algorithms using an open-sourced toolkit and conduct experimental evaluations. PREREQUISITE(S): SE 450 and (IS 467 or CSC 478 or ECT 584)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','578','NEURAL NETWORKS AND DEEP LEARNING','Course focuses on the algorithms, implement, and application of neural networks for learning about data. It will present how neural networks represent data and learn in supervised and unsupervised contexts with applications to language processing, classification, and regression problems. Topics include learning algorithms, and optimization methods, deep learning methods for deriving deep representations from surface features, recursive networks, Boltzmann machines and convolutional networks. PREREQUISITE(S): (CSC 412 and CSC 478) or consent of instructor';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','580','DESIGN OF OBJECT-ORIENTED LANGUAGES','This course covers issues in the design and specification of object-oriented programming languages. Sample topics include the use of patterns in program representation, static and dynamic semantics, subject reduction, subtyping, inheritance, polymorphism, genericity and concurrency. Formerly SE 580. PREREQUISITE(S): SE 450';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','583','ARTIFICIAL INTELLIGENCE II','The course provides an in-depth coverage of advanced topics in Artificial Intelligence, including planning, reasoning with uncertainty, decision theoretic agents, constraint satisfaction and optimization problems, as well as selected topics of interest in knowledge representation, machine learning, and natural language processing. These topics are discussed in the context of design and implementation of real-world intelligent agents. This course is suitable for advanced students with interest in further study in artificial intelligence and related topics, as well as those interested in the application of AI techniques in building systems with intelligent components. PREREQUISITE(S): CSC 480';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','587','COGNITIVE SCIENCE','A study of the relationships between our knowledge of human and computer intelligence. Levels of analysis of intelligent system, examples of cognitive models, and exposure to current publications, with an emphasis on those related to human computer interaction. Students will participate in the design and testing of models of human intelligence, both experimentally and using computer models. PREREQUISITE(S): CSC 403 or HCI 460.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','589','TOPICS IN DATABASE','Specific topics will be selected by the instructor and may vary with each quarter. Can be repeated for credit. Variable credit. PREREQUISITE(S): For specific prerequisites, see syllabus or consult with course instructor. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','590','TOPICS IN USER INTERFACES','Specific topics will be selected by the instructor and may vary with each quarter. Can be repeated for credit. Variable credit. PREREQUISITE(S): For specific prerequisites, see syllabus or consult with course instructor. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','591','TOPICS IN ALGORITHMS','Specific topics will be selected by the instructor and may vary with each quarter. Can be repeated for credit. Variable credit. PREREQUISITE(S): For specific prerequisites, see syllabus or consult course instructor. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','592','TOPICS IN COMPUTER VISION AND PATTERN RECOGNITION','This is an independent study course. May be repeated for credit. PREREQUISITE(S): CSC 482 or CSC 528';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','594','TOPICS IN ARTIFICIAL INTELLIGENCE','Specific topics will be selected by the instructor and may vary with each quarter. Can be repeated for credit. Variable credit. PREREQUISITE(S): For specific prerequisites, see syllabus or consult course instructor. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','595','TOPICS IN COMPUTER SCIENCE','Specific topics will be selected by the instructor and may vary with each quarter. Can be repeated for credit. Variable credit. PREREQUISITE(S): For specific prerequisites, see syllabus or consult course instructor. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','598','TOPICS IN DATA ANALYSIS','Specific topics will be selected by the instructor and may vary with each quarter. Can be repeated for credit. Variable credit. PREREQUISITE(S): For specific prerequisites, see syllabus or consult course instructor. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','599','INDEPENDENT STUDY','Independent study supervised by an instructor. Independent study form required. Can be repeated for credit. Variable Credit. PREREQUISITE(S): None. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','601','MASTER RESEARCH CONTINUATION','Non-credit. This course is intended for master degree students who have completed all course registration requirements and who are regularly using the facilities of the University for study and research, thesis or project completion. These students are required to be registered in this course each quarter of the academic year until all requirements have been completed. PREREQUISITE(S): Completion of required courses. Independent Study form required. (0 credit hours)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','672','PREDICTIVE ANALYTICS CAPSTONE','The capstone course provides an opportunity for students to integrate and apply the analytics skills and knowledge learned in the classroom to real world data. Students work in teams on a large scale analytics project. At the end of the course, students submit a report summarizing their analyses and study outcomes, and present results to the class. PREREQUISITE(S): Instructor consent required';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','690','RESEARCH SEMINAR','Readings and discussion on current research topics. PREREQUISITE(S): Consent of the instructor. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','695','MASTER RESEARCH','Students interested in a more in-depth study of a particular area will register for this course and work with a faculty member (not necessarily their academic advisor) on a research project. The work involved may include system development, empirical studies, or theoretical work. 4 credit hours of CSC 695 replaces one 500level elective course in student degree program. This course can be taken for 1-4 credit hours for up 8 credit-hours. PREREQUISITE(S): Consent of research advisor. Independent study form required. Students must successfully complete the foundation courses prior to their first enrollment in CSC 695. (variable credit )';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','696','MASTER RESEARCH','A student who has made a significant contribution to a research project, through work done in two quarters of CSC 695 (8 credit-hours), may choose to complete the Master Research option. At the end of the two quarters, the student must submit a technical report detailing the results of the research project. This report must be approved by the student research supervisor and the faculty advisor, at which point it will be made available to the public as a CDM Departmental Master Research Technical Report. In that case, the student will be allowed to register for this course. The transcript will show the Research project title as the course topic. PREREQUISITE(S): CSC 695 taken twice and approval of report by student research supervisor and faculty advisor. (0 credit hours)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','697','GRADUATE INTERNSHIP','In cooperation with local employers, the graduate program offers students the opportunity to integrate their academic experience with on-the-job training in computer related work areas. This course is variable credit and may be taken for one to four credits. This course may be repeated for a maximum of four credits total. Admission to the internship program requires consent of the Instructor and a Student Services Advisor. International students may complete curricular practical training (CPT) through this class provided they first obtain CPT authorization from the Office for International Students and Scholars (OISS) before beginning the internship. (1 quarter hour)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','698','MASTER THESIS','A student who has made an original contribution to the area (typically through 8 credit-hours worth of work done in CSC 695, but not necessarily) may choose to complete a MASTER Thesis. The student and the student research advisor form a Master Thesis Committee. The student submits to the committee a thesis detailing the original results of the research project. After a public defense, the committee will decide whether to accept the thesis. In that case, the student will be allowed to register for this course and the transcript will show the thesis title as the course topic. PREREQUISITE(S): Successful defense of a MASTER Thesis. (variable credit)'; 
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','699','RESEARCH','PREREQUISITE(S): Research course supervised by an instructor. Independent Study Form required. Variable credit. Can be repeated for credit. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','701','RESIDENT CANDIDACY CONTINUATION','Non-credit. Students admitted to candidacy for the doctoral degree who have completed all course and dissertation registration requirements and who are regularly using the facilities of the University for study and research are required to be registered each quarter of the academic year until the dissertation and final examination have been completed. PREREQUISITE(S): Admission to Candidacy. Independent Study form required. (0 credit hours)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'CSC','702','NON-RESIDENT CANDIDACY CONTINUATION (PREREQUISITE:ADMISSION TO CANDIDACY)','Non-credit. This registration provides for doctoral candidates who have been admitted to candidacy who are not in residence and need only occasional use of University facilities, including the libraries. PREREQUISITE(S): Admission to Candidacy. Independent Study form required. (0 credit hours)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','400','INTRODUCTION TO IS MANAGEMENT SEMINAR','This one-credit seminar examines the concepts of information and technology management and career options in this field. Students will assess their own interests and skill requirements for various careers. They will also analyze the impacts of IS trends and emerging technologies on their career choices. All new IS master students are required to take this seminar as the first course. PREREQUISITE(S): None (1 quarter hour)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','421','SYSTEMS ANALYSIS','Course focus is on both traditional and object oriented systems analysis, with an emphasis upon developing competency in a wide range of modeling techniques. Specific topics include: overview of the software development environment and project management; project selection, initiation, and planning; determining requirements; process modeling, including DFDs and use cases; logic modeling, including decision tables, sequence diagrams, and activity diagrams; introduction to Entity-Relationship Diagrams. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','422','SYSTEM DESIGN, IMPLEMENTATION, AND MAINTENANCE','Course focus is on both traditional and object oriented systems design. Specific topics include: database design, including logical and physical design; Entity-Relationship diagrams, class diagrams, form and report design; interface and dialogue design; design specifications, including structure charts and prototypes; designing for LANs and distributed systems, as well as the Internet; system implementation, including parallel and phased implementation, testing, documentation, and user training; system maintenance, including types of maintenance, controlling and coordinating maintenance requests, and configuration management. Course ends with a multi-week case study applying the principles from both this course and IS 421, Systems Analysis. PREREQUISITE(S): IS 421 and CSC 451';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','430','FUNDAMENTALS OF IT PROJECT MANAGEMENT','This course concentrates on monitoring, managing and controlling assets and resources on a single IT project. Topics covered are risk management; procurement and contract management; time and cost estimating; controlling and tracking techniques; quality assurance; testing and audit. Students will use common project management software for resource allocation and balancing. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','431','DIGITAL PRODUCT MANAGEMENT','This course focuses on the central role of the Product Manager in creating and sustaining compelling products and services throughout the product lifecycle. Special emphasis is placed on the creation and management of intangible technology products and services throughout the entire product management lifecycle. Product managers act as the focal point for value creation within their organizations leading cross functional product activities from the conception of an idea to the ultimate product retirement. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','433','INFORMATION SECURITY MANAGEMENT','Managing information assets and the security function. Emphasis on managing security-related risk, as well as the process of developing, implementing, and maintaining organizational policies, standards, procedures, and guidelines as they relate to security. Role of the CISO. Identifying and evaluating information assets, threats, and vulnerabilities. Quantitative and qualitative risk analysis, risk mitigation, residual risk, and risk resolution, as they relate to information security. Incident response. Consideration of the role and implementation of security controls during the process of analysis, design, and development. The application of policy development principles to security risk management. Introduction to compliance, as well as the CISSP domains. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','435','ORGANIZATIONAL MODELING','The course explores contemporary approaches to analyzing and modeling organizational problems, processes, workflow, users and data. The emphasis is on the initial stages of analysis where the root cause of problems are identified, formulated and modeled. Students will acquire an array of modeling skills and be able to prescribe the proper modeling approach based on a variety of organizational and contextual factors. Business process modeling, management and metrics will be covered. Object-oriented and user-centered approaches will be introduced. PREREQUISITE(S): IS 421 or SE 430';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','440','COLLABORATIVE TECHNOLOGIES FOR LEADING PROJECTS','Study of the process of virtual teaming with emphasis on facilitation of different time project activities and facilitation of same time meetings. Students will learn how small group psychology and group communication theories inform specific behaviors in the design and leadership of meetings. Several meeting types including information briefing, focus group, document writing, decision making, requirements gathering, and teaching/training will be explored. In addition, the course surveys current collaboration technologies and discusses how to select among those technologies usability and fit to purpose of a meeting agenda. DL students may be required to schedule same time sessions with the instructor and other DL students; see current quarter syllabus for more information on this point. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','444','IT AUDITING','Management and boards continue to recognize the importance of effectively managing information technology (IT) assets - to meet business objectives and to thoughtfully manage IT related business risks. This course examines the key principles related to auditing information technology processes and related controls and is designed to meet the ever increasing needs of IT audit and IT governance professionals. In addition, this course aids in the preparation for the Certified Information Systems Auditor (CISA) exam. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','452','BIG DATA & THE INTERNET OF THINGS (IoT)','This course surveys system design concepts, techniques, and algorithms in Machine to Machine (M2M), Internet of Things (IoT), and Internet of Everything (IoE). Topics covered include system architecture for big data, sensors and embedded technologies, IoT architecture, consumer vs. industrial IoT, wearable and mobile systems, tracking systems, IoT and big data analytics, market dynamics and entrepreneurial opportunities. Special emphasis is placed on identifying best practices in using big data and IoT through case studies and hands-on exercises. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','455','ELECTRONIC BUSINESS','An introduction to electronic business. The topics include business models, technologies, business and social impact of e-business. It explores the tools, skills, business and social implications of emerging electronic business. In addition to acquiring basic skills for identifying electronic business opportunities and creating a presence in the online marketplace, the student reexamines fundamental processes of business as they are performed in cyberspace in contrast to the marketplace. This helps them understand changes as the cyberspace grows increasingly important in the global economy. PREREQUISITE(S): None. For Kellstadt students or students pursuing the MS in Business Information Technology only.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','456','KNOWLEDGE MANAGEMENT SYSTEMS','survey of emerging technologies supporting organizational knowledge processes including capture, codification, structure, storage, dissemination and reuse. The course will critically examine how organizations may leverage these technologies toward competitive advantage. Students will experiment with contemporary knowledge management (KM) tools. Some theoretical perspectives on knowledge management (KM) and organizational learning (OL) will be introduced. PREREQUISITE(S): None';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','467','FUNDAMENTALS OF DATA SCIENCE','An introduction to the Knowledge Discovery Technologies covering all stages of a data mining process: domain understanding, data collection and selection, data cleaning and transformation, dimensionality reduction, pattern discovery, evaluation, and knowledge extraction. The course provides a comprehensive overview of data mining techniques used to realize these stages, including traditional statistical analysis and machine learning techniques. Students will analyze large datasets and develop modeling solutions to support decision making in various domains such as healthcare, finance, security, marketing, customer relationship management (CRM), and multimedia. PREREQUISITE(S): IT 403';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','482','LEGAL ASPECTS OF INFORMATION TECHNOLOGY','A practical survey of computer and information technology law arising in a high tech environment. Topics covered include: employment contracts, civil and criminal law, fraud and abuse, contracts, e-commerce, intellectual property, privacy, security, harmful communications, constitutional and First Amendment issues, and internal law and trade. PREREQUISITE(S): NONE.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','483','INFORMATION SERVICES AND OPERATIONS','This course focuses on the operational aspects of information systems in organizations by examining the concepts, tools and techniques available to IS professionals responsible for the delivery of IT services. Topics include the organization of the IT services; the procurement of hardware, software and vendor services; operation of data centers, help desks and user training, the development and use of RFPs (Request for Proposals) and SLAs (Service Level Agreements), the integration of services and operations with application development project needs, and the role of capital and operating budgets. PREREQUISITE(S): Completion of five or more SoC MS level courses is required.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','485','REQUIREMENTS ELICITATION, ANALYSIS, AND SPECIFICATION','This course focuses on the concepts and skills needed to elicit, analyze, specify, and manage requirements for a software or systems level project. Students will learn to identify and work with stakeholders through conducting a variety of requirements gathering techniques including interviewing, surveying, ethnography, and Joint Application Design (JAD) sessions, to identify and analyse requirements conflicts and negotiate solutions, to model requirements and specify them in unambiguous ways, and to manage requirements throughout the software lifecycle using change controls, traceability, and impact analysis techniques. The requirements process will be examined in both traditional and agile environments. Current topics such as requirements for product lines or distributed development teams will also be explored as time permits. A student may not take both SE 482 and IS 485 for credit toward a degree. PREREQUISITE(S): IS 422 or IS 430 or PM 430.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','500','INFORMATION TECHNOLOGY LEADERSHIP','Managing people ethically and effectively by applying a broad range of creative approaches to individual and team leadership within an Information Technology context. Leadership methods studied include trait-based, skills-based, situational, contingency theory, path-goal theory, leader-member exchange theory, transformational, psychodynamic, and authentic leadership, as well as team leadership and the international, cultural, and ethical dimensions of leadership. Students assess their leadership styles and design individualized development plans to strengthen existing skills and expand IT leadership capabilities by incorporating additional leadership dimensions. PREREQUISITE(S): IS 430 OR PM 430 OR SE 477';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','505','BUSINESS CONTINUITY/DISASTER RECOVERY THEORIES AND STRATEGIES','This course focuses on the knowledge necessary for an organization to prepare for a variety of major disruptions (floods, earthquakes, terrorist attacks, etc.). The goal is survival of the organization and its daily workflow despite major disruption. Students learn to analyze and prioritize risks and determine criticality ratings that are used to determine survival strategies. Students also learn how to organize employees to respond to a major disruption and how to document recovery plans. Course content includes coverage of current industry trends, as well as planning for the survival of Information Technology functions within an organization.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','506','BUSINESS CONTINUITY/DISASTER RECOVERY MANAGEMENT AND TACTICS','The course prepares students to lead an organization business continuity and disaster recovery plans. Students learn the methodology needed to organize this function within an organization, evaluate an organization business continuity and disaster recovery program according to established industry standards, and conduct a variety of quick-recovery drills. Students also focus upon industry-related human resources issues, crisis communications, and policies and procedures for setting up a command center. Course content includes coverage of current industry trends, as well as managing the survival of Information Technology functions within an organization. PREREQUISITE(S): IS 505';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','511','SOCIAL ISSUES OF COMPUTING','This course aims to provide a broad survey of the individual, organizational, and cultural impacts of computers and to stimulate reflection upon the social and ethical issues provoked by current and projected uses of computers. Some topics include an in-depth look at computers as they relate to workplaces, communities, public policy, legal issues, education, privacy, and moral values. PREREQUISTE(S): NONE.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','533','ENTERPRISE SECURITY INFRASTRUCTURE CONTROLS AND REGULATORY COMPLIANCE','Design, implementation, support and management of control methods in enterprise environments. Focus is on how these controls can help organizations achieve regulatory compliance. Review of Sarbanes-Oxley and its impact on IT systems. Detailed study of how risk assessment methods, information security program management and ERP systems can be used to fulfill regulatory and legal requirements. Control Objectives for Information and related Technology (COBIT) guidelines and best practices for SOX compliance. Security management standards (ISO 17799, BS 7799 and ISO 27001) . PREREQUISITE(S): IS 433';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','535','INFORMATION TECHNOLOGY INVESTMENT FINANCIAL ANALYSIS','This course focuses on the application of financial analysis and decision-making approaches to aid information technology investment decisions at the operational, project, tactical and strategic levels. Students will learn how to apply a variety of financial methods -- breakeven analysis, present value analysis, profitability index, and return on investment to various IT investment decisions. The course will also address cost benefit analysis, outsourcing, balanced scorecard, and multi-factor scoring, benchmarking, and IT investment portfolio methods. These techniques will prepare students to manage capital budgets, acquisition of system and application software, hardware, personnel, and professional services at project and system levels as well as enterprise investment portfolio. PREREQUISITE(S): SE 477 or IS 565 or ACCT 500 or IS 430 or PM 430 or ECT 455';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','536','ENTERPRISE CLOUD COMPUTING','Cloud concepts, architecture, and service management, with particular emphasis upon identifying and analyzing potential business applications of cloud computing. Students will conduct feasibility studies, detailing the advantages and disadvantages of implementing a cloud computing platform for specific applications, with particular emphasis upon financial considerations, business benefits, and security risks. Students will develop the ability to evaluate alternatives and effectively argue in favor of their choices within the cloud computing knowledge domain. They will be able to define, apply, and defend the need for standards and best practices. Students will work within a project team following the principles of project management to design, build, and implement cloud applications.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','540','GLOBAL INFORMATION TECHNOLOGY','A study of the hardware, software, and techniques for using virtual information technologies to support teams working in a distributed, virtual, or global enviornments. Topics include software survey and evaluation, software deployment within organizational and trans-organizational contexts, trans-national vendor relationships, trans-border data flow, geographically dispersed software development, and integration of diverse technologies. PREREQUISITE(S): Completion of five or more SoC MS level courses is required.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','549','DATA WAREHOUSING','Introduction to data warehousing and the foundations of understanding the issues involved in building a successful data warehouse. Data warehouse development methodology and issues surrounding the planning of the data warehouse. Data quality and metadata in the data warehouse. Analysis, transformation and loading of data into a data warehouse. Development of the data architecture and physical design. Implementation and administration of the data warehouse. PREREQUISTE(S): CSC 451 or CSC 453 or CSC 455';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','550','ENTERPRISE DATA MANAGEMENT','This course focuses on the technical concepts and managerial knowledge needed to define, integrate and govern centralized and distributed data for a wide range of application systems used at large, multinational corporations. Topics include data repository, data life cycle, DAMA-DMBOK, data stewardship, data asset valuation, enterprise data architecture, data modeling with meta-data, data security standards, master data, and data quality management. PREREQUISITE(S): CSC 451 or CSC 453 or CSC 455';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','553','ADVANCED TOPICS FOR SYSTEMS DEVELOPMENT','Planning and implementation of enterprise systems in the context of enterprise transformation and new market dynamics. Networked enterprise and virtual organizations. Internet and intranet applications for electronic commerce, mass customization and information empowerment. Enterprise-wide systems, business process reengineering. Interorganizational systems, sourcing options, and transformational information technologies. Value-chain analysis and competitive strategies. Case studies examine various planning and implementation approaches and impacts. PREREQUISITE(S): IS 422 or ECT 555 or SE 430.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','556','ENTERPRISE PROJECT MANAGEMENT','This course covers how an enterprise coordinates and effectively manages all its IT projects and programs through program management and the IT program management office. Students will learn the role of the IT program management office in establishing and maintaining the project and program infrastructure and in assisting project managers, program managers, and the executive steering committee. Students will analyze the role of program management in coordinating the delivery of expected program benefits, in managing stakeholder expectations, and in establishing program governance. PREREQUISITE(S): IS 430 or PM 430';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','560','ENTERPRISE SYSTEMS','An introduction to enterprise systems for data and process integration, including ERP systems. Topics include the requirements of enterprise systems, application architecture, tools, and functionality of leading enterprise systems, life cycle and methodologies for systems integration, selection, and implementation strategies. Also addressed are emerging trends for enterprise systems and relationship among component systems. PREREQUISITE(S): Advanced Standing';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','565','IT OUTSOURCING','The course focuses on how organizations can use leverage of scale as a source for cost reduction; leverage of expertise for improved superior IT performance; leverage of access (e.g. location) to develop new strategies. Other topics covered include different types of sourcing strategies, sourcing maturity levels and best practices. PREREQUISITE(S): Completion of five or more SoC MS level courses is required';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','570','ENTERPRISE SYSTEM IMPLEMENTATION','Formerly IS 450. This course is targeted towards information systems professionals who are involved in the planning and implementation of large scale, cross-functional enterprise systems. Students will examine the characteristics of technology efforts that change and transform the way people perform their tasks and how the new technology structures the flows of information and decision making using workflow modeling methods. Through case studies and exercises students gain insights into the elements of successful implementations leading to the preparation of a change management plan. Emphasis is placed on developing mechanisms for communicating and training all affected agents. PREREQUISITE(S): IS 430 or PM 430 or completion of five or more other SoC MS level courses should contact the course instructor or an advisor.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','574','BUSINESS INTELLIGENCE','Introduction to the concepts of business intelligence (BI) as components and functionality of information systems. How business problems can be solved effectively by using operational data to create data warehouses, and then applying data mining tools and analytics to gain new insights into organizational operations. Detailed discussion of the analysis, design and implementation of systems for BI, including: data management systems, decision support systems, group support systems, knowledge engineering, expert systems, and Web 2.0 tools. Case studies of application software, web tools, success and limitation as well as technical and social issues. (PREREQUISITE(S): (SE 430 or IS 435 or PM 430 or MIS 674) and CS C451';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','577','INFORMATION SYSTEMS POLICIES AND STRATEGIES','This capstone course emphasizes the planning and management of information technologies and related resources at the corporate level. Topics covered include assessment of information technologies, tracking emerging technologies and trends, managing portfolio resources and matching them to business needs, technology transfer, end-user computing, outsourcing, theoretical models, strategic applications and strategic IT planning. Students are encouraged to take this course toward the end of their study. PREREQUISITE(S):Completion of ten or more SoC MS level courses is required.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','578','INFORMATION TECHNOLOGY CONSULTING','This course is for the IT professional. The emphasis is on examining the models, techniques, and skill development for providing effective IT consulting services. The course examines the structure of IT consulting markets; leading IT consulting practices; models and approaches for providing internal IT consulting services; sourcing strategies, evaluation of RFPs and response process contract formulation, client relations and project management; knowledge management and collaboration and IT strategies. PREREQUISITE(S): Completion of foundation or core phase.';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','579','VIRTUAL SOFTWARE TEAMS MANAGEMENT','Application of project management principles, tools, and techniques to a virtual software development project; management of virtual software teams; planning, executing the plan, monitoring and controlling the development process. Work with project office (PMO) to set templates for reporting and common processes and standards; set milestones and their deliverables; establish communication medium for the virtual team. PREREQUISITE(S): PM 430 or IS 430';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','580','TECHNOLOGY ENTREPRENEURSHIP','In-depth examination of the entrepreneurial process within technology intensive ventures. Roles of entrepreneurs and their start-up teams. Suitable business models and strategies. Legal issues and intellectual property. Financial issues and venture resources. Role of the customer and entrepreneurial marketing. Students will analyze and present case studies of technology entrepreneurial ventures. Students will develop a marketing plan and a business plan for a technology-intensive entrepreneurial venture of their choice. PREREQUISITE(S): Completion of the foundation phase.';

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)


SELECT 'IS','590','INFORMATION SYSTEMS RESEARCH METHODS','Introduction of information systems (IS) research methods and theories. The course is taught as a seminar course. Both quantitative and qualitative methods are discussed. PREREQUISITES: CSC 424 or CSC 428';

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)


SELECT 'IS','596','TOPICS IN INFORMATION SYSTEMS','Advanced study focusing on a specific area of information systems each quarter. May be repeated for credit. PREREQUISITE(S): For specific prerequisites, see syllabus or consult course instructor.';


INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)

SELECT 'IS','599','INDEPENDENT STUDY','Independent study form and consent of instructor required. (variable credit)';
INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)



SELECT 'IS','690','RESEARCH SEMINAR','Readings and discussion on current research topics. Students may register for this course no more than twice. (PREREQUISTE(S):Consent of advisor). (variable credit)';

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)


SELECT 'IS','696','MASTER PROJECT','Four credit hours. Students may register for this course only after their advisor has approved a written proposal for their project. Independent study form required. (PREREQUISTE(S):Consent of advisor).';

INSERT INTO tblCourse (crs_department_code, crs_number, crs_title,crs_description)


SELECT 'IS','698','MASTERTHESIS','Two credit hours.Students may register for this course only after their advisor has approved a written proposal for their thesis. Students must continue to register for this course every quarter after their first registration in it until they complete their project or thesis to the satisfaction of their advisor. They earn two hours of credit for each such registration but only four hours of credit will apply for degree credit. Independent study form required. (PREREQUISTE(S):Consent of advisor). (2 quarter hours)';

COMMIT TRANSACTION