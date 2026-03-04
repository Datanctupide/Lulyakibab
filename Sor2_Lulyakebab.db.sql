BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Exams" (
	"ID"	INTEGER,
	"Student_ID"	INTEGER UNIQUE,
	"Subject_ID"	INTEGER UNIQUE,
	"Exam_Date"	TEXT,
	"Grade"	INTEGER,
	PRIMARY KEY("ID"),
	FOREIGN KEY("Student_ID") REFERENCES "Students"("ID"),
	FOREIGN KEY("Subject_ID") REFERENCES "Subjects"("ID")
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
	PRIMARY KEY("ID"),
	FOREIGN KEY("Teacher_ID") REFERENCES "Teachers"("ID")
);
CREATE TABLE IF NOT EXISTS "Teachers" (
	"ID"	INTEGER,
	"Full_Name"	TEXT NOT NULL,
	"Department"	TEXT,
	"Position"	TEXT,
	PRIMARY KEY("ID")
);
INSERT INTO "Exams" VALUES (1,2,1,'never',10000);
INSERT INTO "Exams" VALUES (2,1,3,'prikol',0);
INSERT INTO "Exams" VALUES (3,3,2,'30.02.00',0);
INSERT INTO "Students" VALUES (1,'Datan','30.02.00','lol',2);
INSERT INTO "Students" VALUES (2,'Babayaka',2,'Oklahoma',2077);
INSERT INTO "Students" VALUES (3,'Karamislo','69.69.69','Ohio',-1);
INSERT INTO "Subjects" VALUES (1,'Prizhki s krishi',2,1000000000);
INSERT INTO "Subjects" VALUES (2,'Lox',1,-1);
INSERT INTO "Subjects" VALUES (3,'Smotret prikoli',3,'523670156981691597239*0');
INSERT INTO "Teachers" VALUES (1,'Ibon','Tamak','lox');
INSERT INTO "Teachers" VALUES (2,'Nosk','Pizkultura','Nikto');
INSERT INTO "Teachers" VALUES (3,'Gaster','Matematica','Uborshik');
COMMIT;
