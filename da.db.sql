BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Exams" (
	"ID"	INTEGER,
	"Student_ID"	INTEGER UNIQUE,
	"Subject_ID"	INTEGER UNIQUE,
	"Exam_Date"	DATE,
	"Grade"	INTEGER,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Students" (
	"ID"	INTEGER,
	"Full_Name"	TEXT NOT NULL,
	"Birth_Date"	DATE,
	"Group_Name"	TEXT,
	"Enrollment_Year"	INTEGER,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Subjects" (
	"ID"	INTEGER,
	"Name"	TEXT NOT NULL UNIQUE,
	"Teacher_ID"	INTEGER,
	"Hours"	INTEGER,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Teachers" (
	"ID"	INTEGER,
	"Full_Name"	TEXT NOT NULL,
	"Department"	TEXT,
	"Position"	TEXT,
	PRIMARY KEY("ID")
);
COMMIT;
