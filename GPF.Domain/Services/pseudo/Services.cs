/**

    public static List<Account> AccountRegister(
        string username,
        string password,
        Name name,
        Address address,
        Degree degree,
        Concentration concentration,
        AccountRole role
        )
    {
        List<Account> accounts = new List<Account>();

        Account account = new Account();
        account.Id = 93215556;
        account.Username = username;
        account.Password = password;
        account.Name = new Name
        {
            FirstName = name.FirstName,
            LastName = name.LastName
        };
        account.Address = new Address
        {
            Street = address.Street,
            City = address.City,
            State = address.State,
            Zip = address.Zip
        };
        account.Degree = degree;
        account.Concentration = concentration;
        account.Role = role == AccountRole.Unassigned ? role : AccountRole.Student;
        account.ClassHistory = new List<ClassOffering>
        {
            new ClassOffering()
            {
                Id = 9288556,
                Section = 710,
                Course = new Course
                {
                    Id = 83334,
                    Number = 394,
                    Department = "CSC"
                },
                Dates = new DateTimeSpan
                {
                    Begin = Convert.ToDateTime("09/01/2017"),
                    End = Convert.ToDateTime("11/15/2017")
                },
                Status = ClassStatus.Open,
                Classroom = new Classroom
                {
                    Id = 2044,
                    Number = 503,
                    Section = "",
                    Building = new Building
                    {
                        Name = "Richard M. and Maggie C. Daley Building",
                        Campus = new Campus { Name = "Loop" }
                    }
                },
                Instructor = new Account { Id = 9501 }
            }
        };

        accounts.Add(account);

        return accounts;
    }

    public static List<Account> AccountLogin(
        string username,
        string password
        )
    {
        List<Account> accounts = new List<Account>();

        Account account = new Account();
        account.Id = 93215556;
        account.Username = username;
        account.Password = password;
        account.Name = new Name
        {
            FirstName = "John",
            LastName = "Smith"
        };
        account.Address = new Address
        {
            Street = "112 N Green St",
            City = "Chicago",
            State = "IL",
            Zip = "60607"
        };
        account.Degree = new Degree { Id = 1 };
        account.Concentration = new Concentration { Id = 1 };
        account.Role = AccountRole.Student;
        account.ClassHistory = new List<ClassOffering>
        {
            new ClassOffering()
            {
                Id = 9288556,
                Section = 710,
                Course = new Course
                {
                    Id = 83334,
                    Number = 394,
                    Department = "CSC"
                },
                Dates = new DateTimeSpan
                {
                    Begin = Convert.ToDateTime("09/01/2017"),
                    End = Convert.ToDateTime("11/15/2017")
                },
                Status = ClassStatus.Open,
                Classroom = new Classroom
                {
                    Id = 2044,
                    Number = 503,
                    Section = "",
                    Building = new Building
                    {
                        Name = "Richard M. and Maggie C. Daley Building",
                        Campus = new Campus { Name = "Loop" }
                    }
                },
                Instructor = new Account { Id = 9501 }
            }
        };

        accounts.Add(account);

        return accounts;
    }

    public static List<Account> AccountRetrieve(
        int id,
        string username,
        Name name,
        Address address,
        AccountRole role
        )
    {
        List<Account> accounts = new List<Account>();

        Account account = new Account();
        account.Id = id;
        account.Username = username;
        account.Name = new Name
        {
            FirstName = name.FirstName,
            LastName = name.LastName
        };
        account.Address = new Address
        {
            Street = address.Street,
            City = address.City,
            State = address.State,
            Zip = address.Zip
        };
        account.Degree = new Degree { Id = 1 };
        account.Concentration = new Concentration { Id = 1 };
        account.Role = role;
        account.ClassHistory = new List<ClassOffering>
        {
            new ClassOffering()
            {
                Id = 9288556,
                Section = 710,
                Course = new Course
                {
                    Id = 83334,
                    Number = 394,
                    Department = "CSC"
                },
                Dates = new DateTimeSpan
                {
                    Begin = Convert.ToDateTime("09/01/2017"),
                    End = Convert.ToDateTime("11/15/2017")
                },
                Status = ClassStatus.Open,
                Classroom = new Classroom
                {
                    Id = 2044,
                    Number = 503,
                    Section = "",
                    Building = new Building
                    {
                        Name = "Richard M. and Maggie C. Daley Building",
                        Campus = new Campus { Name = "Loop" }
                    }
                },
                Instructor = new Account { Id = 9501 }
            }
        };

        accounts.Add(account);

        return accounts;
    }

    public static List<Account> AccountUpdate(
        Account account
        )
    {
        List<Account> accounts = new List<Account>();

        accounts.Add(account);

        return accounts;
    }

    public static List<Account> AccountRetrieveAll()
    {
        List<Account> accounts = new List<Account>();

        Account account = new Account();
        account.Id = 93215556;
        account.Username = "johnsmith@email.com";
        account.Name = new Name
        {
            FirstName = "John",
            LastName = "Smith"
        };
        account.Address = new Address
        {
            Street = "112 N Green St",
            City = "Chicago",
            State = "IL",
            Zip = "60607"
        };
        account.Degree = new Degree { Id = 1 };
        account.Concentration = new Concentration { Id = 1 };
        account.Role = AccountRole.Student;
        account.ClassHistory = new List<ClassOffering>
        {
            new ClassOffering()
            {
                Id = 9288556,
                Section = 710,
                Course = new Course
                {
                    Id = 83334,
                    Number = 394,
                    Department = "CSC"
                },
                Dates = new DateTimeSpan
                {
                    Begin = Convert.ToDateTime("09/01/2017"),
                    End = Convert.ToDateTime("11/15/2017")
                },
                Status = ClassStatus.Open,
                Classroom = new Classroom
                {
                    Id = 2044,
                    Number = 503,
                    Section = "",
                    Building = new Building
                    {
                        Name = "Richard M. and Maggie C. Daley Building",
                        Campus = new Campus { Name = "Loop" }
                    }
                },
                Instructor = new Account { Id = 9501 }
            }
        };

        accounts.Add(account);

        account = new Account();
        account.Id = 91569635;
        account.Username = "janedoe@email.com";
        account.Name = new Name
        {
            FirstName = "Jane",
            LastName = "Doe"
        };
        account.Address = new Address
        {
            Street = "218 W Cermak Rd",
            City = "Chicago",
            State = "IL",
            Zip = "60616"
        };
        account.Degree = new Degree { Id = 2 };
        account.Concentration = new Concentration { Id = 1 };
        account.Role = AccountRole.Student;
        account.ClassHistory = new List<ClassOffering>
        {
            new ClassOffering()
            {
                Id = 9288556,
                Section = 710,
                Course = new Course
                {
                    Id = 83334,
                    Number = 394,
                    Department = "CSC"
                },
                Dates = new DateTimeSpan
                {
                    Begin = Convert.ToDateTime("09/01/2017"),
                    End = Convert.ToDateTime("11/15/2017")
                },
                Status = ClassStatus.Open,
                Classroom = new Classroom
                {
                    Id = 2044,
                    Number = 503,
                    Section = "",
                    Building = new Building
                    {
                        Name = "Richard M. and Maggie C. Daley Building",
                        Campus = new Campus { Name = "Loop" }
                    }
                },
                Instructor = new Account { Id = 9501 }
            }
        };

        accounts.Add(account);

        return accounts;
    }

    public static List<GPFSession> GpfSessionSave(
        Account account,
        Degree degree,
        Concentration concentration,
        DateTime enteringQuarter,
        int classesPerQuarter,
        ClassDeliveryOption classDeliveryOption
        )
    {
        List<GPFSession> sessions = new List<GPFSession>();

        GPFSession session = new GPFSession();
        session.Id = 1;
        session.Account = account;
        session.Degree = degree;
        session.Concentration = concentration;
        session.EnteringQuarter = enteringQuarter;
        session.ClassesPerQuarter = classesPerQuarter;
        session.ClassDeliveryOption = classDeliveryOption;

        sessions.Add(session);

        return sessions;
    }

    public static List<GPFSession> GpfSessionRetrieve(
        int sessionId,
        int accountId
        )
    {
        List<GPFSession> sessions = new List<GPFSession>();

        GPFSession session = new GPFSession();
        session.Id = sessionId;
        session.Account = new Account { Id = accountId };
        session.Degree = new Degree { Id = 1 };
        session.Concentration = new Concentration { Id = 1 };
        session.EnteringQuarter = new DateTime(2017, 1, 7);
        session.ClassesPerQuarter = 2;
        session.ClassDeliveryOption = ClassDeliveryOption.InClassAndOnline;

        sessions.Add(session);

        return sessions;
    }

    public static List<GPFSession> GpfSessionRetrieveAll()
    {
        List<GPFSession> sessions = new List<GPFSession>();
            
        GPFSession session = new GPFSession();
        session.Id = 1;
        session.Account = new Account { Id = 93215556 };
        session.Degree = new Degree { Id = 1 };
        session.Concentration = new Concentration { Id = 1 };
        session.EnteringQuarter = new DateTime(2017, 1, 1);
        session.ClassesPerQuarter = 2;
        session.ClassDeliveryOption = ClassDeliveryOption.InClassAndOnline;

        sessions.Add(session);

        session = new GPFSession();
        session.Id = 2;
        session.Account = new Account { Id = 93215556 };
        session.Degree = new Degree { Id = 2 };
        session.Concentration = new Concentration { Id = 3 };
        session.EnteringQuarter = new DateTime(2018, 1, 1);
        session.ClassesPerQuarter = 4;
        session.ClassDeliveryOption = ClassDeliveryOption.OnlineOnly;

        sessions.Add(session);

        return sessions;
    }

    public static List<Degree> DegreeRetrieve(
        int id,
        string title,
        string college
        )
    {
        List<Degree> degrees = new List<Degree>();

        Degree degree = new Degree();
        degree.Id = id;
        degree.Title = title;
        degree.College = college;
        degree.Description = "This is a description of the Computer Science degree.";
        degree.RequiredCourses = new List<Course>() {
            new Course { Id = 1 },
            new Course { Id = 2 }
        };
        degree.Concentrations = new List<Concentration>();
        degree.Concentrations.Add(new Concentration
        {
            Id = 1,
            Title = "Software and Systems Development",
            Courses = new List<Course>
            {
                new Course { Id = 3 },
                new Course { Id = 4 }
            },
            ElectiveAreas = new List<Concentration>
            {
                new Concentration
                {
                    Id = 1,
                    Name = "Theory",
                    Courses = new List<Course>
                    {
                        new Course { Id = 5 },
                        new Course { Id = 6 }
                    }
                },
                new Concentration
                {
                    Id = 1,
                    Name = "Data Science",
                    Courses = new List<Course>
                    {
                        new Course { Id = 7 },
                        new Course { Id = 8 }
                    }
                }
            }
        });

        degrees.Add(degree);

        return degrees;
    }

    public static List<Degree> DegreeRetrieveAll()
    {
        List<Degree> degrees = new List<Degree>();
            
        Degree degree = new Degree();
        degree.Id = 1;
        degree.Title = "Computer Science";
        degree.College = "CDM";
        degree.Description = "This is a description of the Computer Science degree.";
        degree.RequiredCourses = new List<Course>() {
            new Course { Id = 1 },
            new Course { Id = 2 }
        };
        degree.Concentrations = new List<Concentration>();
        degree.Concentrations.Add(new Concentration
        {
            Id = 1,
            Title = "Software and Systems Development",
            Courses = new List<Course>
            {
                new Course { Id = 3 },
                new Course { Id = 4 }
            },
            ElectiveAreas = new List<Concentration>
            {
                new Concentration
                {
                    Id = 1,
                    Name = "Theory",
                    Courses = new List<Course>
                    {
                        new Course { Id = 5 },
                        new Course { Id = 6 }
                    }
                },
                new Concentration
                {
                    Id = 1,
                    Name = "Data Science",
                    Courses = new List<Course>
                    {
                        new Course { Id = 7 },
                        new Course { Id = 8 }
                    }
                }
            }
        });

        degrees.Add(degree);

        degree = new Degree();
        degree.Id = 2;
        degree.Title = "Information Systems";
        degree.College = "CDM";
        degree.Description = "This is a description of the Information Systems degree.";
        degree.RequiredCourses = new List<Course>() {
            new Course { Id = 1 },
            new Course { Id = 2 }
        };
        degree.Concentrations = new List<Concentration>();
        degree.Concentrations.Add(new Concentration
        {
            Id = 1,
            Title = "Software and Systems Development",
            Courses = new List<Course>
            {
                new Course { Id = 3 },
                new Course { Id = 4 }
            },
            ElectiveAreas = new List<Concentration>
            {
                new Concentration
                {
                    Id = 1,
                    Name = "Business Analysis/Systems Analysis",
                    Courses = new List<Course>
                    {
                        new Course { Id = 5 },
                        new Course { Id = 6 }
                    }
                },
                new Concentration
                {
                    Id = 1,
                    Name = "Business Intelligence",
                    Courses = new List<Course>
                    {
                        new Course { Id = 7 },
                        new Course { Id = 8 }
                    }
                }
            }
        });

        degrees.Add(degree);

        return degrees;
    }

    public static List<Course> CourseRetrieve(
        int courseId,
        int courseNumber,
        string department,
        string title,
        decimal units,
        bool active,
        int isPrerequisiteOfCourseId,
        string isRequirementOfDegreeName
        )
    {
        List<Course> courses = new List<Course>();

        Course course = new Course();
        course.Id = courseId;
        course.Number = courseNumber;
        course.Department = department;
        course.Title = title;
        course.Description = "This is a description of this course.";
        course.Units = units;
        course.Active = active;
        course.Prerequisites = new List<Course>
        {
            new Course { Id = 3 },
            new Course { Id = 4 }
        };

        courses.Add(course);

        return courses;
    }

    public static List<Course> CourseRetrieveAll()
    {
        List<Course> courses = new List<Course>();

        Course course = new Course();
        course.Id = 83334;
        course.Number = 394;
        course.Department = "CSC";
        course.Title = "Capstone: Software Projects";
        course.Description = "Design and build a software project";
        course.Units = Convert.ToDecimal(4.00);
        course.Active = true;
        course.Prerequisites = new List<Course>
        {
            new Course { Id = 1 },
            new Course { Id = 2 }
        };

        courses.Add(course);

        course = new Course();
        course.Id = 78465;
        course.Number = 421;
        course.Department = "IS";
        course.Title = "Systems Analysis";
        course.Description = "Traditional and object oriented systems analysis, with an emphasis upon developing competency in a wide range of modeling techniques.";
        course.Units = Convert.ToDecimal(4.00);
        course.Active = true;
        course.Prerequisites = new List<Course>
        {
            new Course { Id = 3 },
            new Course { Id = 4 }
        };

        courses.Add(course);

        return courses;
    }

    public static List<ClassOffering> ClassRetrieve(
        int classId,
        int section,
        Course course,
        ClassStatus status,
        ClassDeliveryOption deliveryOption,
        int hasHistoryInAccountId
        )
    {
        List<ClassOffering> courseClasses = new List<ClassOffering>();

        ClassOffering courseClass = new ClassOffering();
        courseClass.Id = classId;
        courseClass.Section = section;
        courseClass.Course = new Course
        {
            Id = 83334,
            Number = 394,
            Department = "CSC"
        };
        courseClass.Dates = new DateTimeSpan
        {
            Begin = Convert.ToDateTime("09/01/2017"),
            End = Convert.ToDateTime("11/21/2017")
        };
        courseClass.Status = status;
        courseClass.Classroom = new Classroom
        {
            Id = 2001,
            Number = 103,
            Section = "C",
            Building = new Building
            {
                Name = "DePaul Center",
                Campus = new Campus { Name = "Loop" }
            }
        };
        courseClass.Instructor = new Account { Id = 9501 };

        courseClasses.Add(courseClass);

        return courseClasses;
    }

    public static List<ClassOffering> ClassRetrieveAll()
    {
        List<ClassOffering> courseClasses = new List<ClassOffering>();

        ClassOffering courseClass = new ClassOffering();
        courseClass.Id = 9288556;
        courseClass.Section = 710;
        courseClass.Course = new Course
        {
            Id = 83334,
            Number = 394,
            Department = "CSC"
        };
        courseClass.Dates = new DateTimeSpan
        {
            Begin = Convert.ToDateTime("09/01/2017"),
            End = Convert.ToDateTime("11/15/2017")
        };
        courseClass.Status = ClassStatus.Open;
        courseClass.Classroom = new Classroom
        {
            Id = 2044,
            Number = 503,
            Section = "",
            Building = new Building
            {
                Name = "Richard M. and Maggie C. Daley Building",
                Campus = new Campus { Name = "Loop" }
            }
        };
        courseClass.Instructor = new Account { Id = 9501 };

        courseClasses.Add(courseClass);

        courseClass = new ClassOffering();
        courseClass.Id = 9288556;
        courseClass.Section = 711;
        courseClass.Course = new Course
        {
            Id = 76255,
            Number = 421,
            Department = "IS"
        };
        courseClass.Dates = new DateTimeSpan
        {
            Begin = Convert.ToDateTime("09/01/2017"),
            End = Convert.ToDateTime("11/21/2017")
        };
        courseClass.Status = ClassStatus.Open;
        courseClass.Classroom = new Classroom
        {
            Id = 2001,
            Number = 103,
            Section = "C",
            Building = new Building
            {
                Name = "DePaul Center",
                Campus = new Campus { Name = "Loop" }
            }
        };
        courseClass.Instructor = new Account { Id = 9501 };

        courseClasses.Add(courseClass);

        return courseClasses;
    }
*/