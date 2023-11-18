/*Ctrl +F Doesn't Work to find wrong queries*/
/*TableDroppersDeleters*/
delete student
delete book
delete borrow
delete instructor
delete equipment
delete room
drop table borrow
drop table student
drop table instructor
drop table equipment
drop table room
drop table book;
/*1a*/
CREATE TABLE student (
    student_id VARCHAR(15),
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_initial CHAR(1),
    permanent_address VARCHAR(255) NOT NULL,
    current_address VARCHAR(255),
    contact_number VARCHAR(15),
    contact_email VARCHAR(100),
    birthdate DATE,
    program VARCHAR(100) NOT NULL,
    enrollment_year INT,
    PRIMARY KEY(student_id)
);
/*1b*/
CREATE TABLE instructor(
	instructor_id VARCHAR(15),
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_initial CHAR(1),
    permanent_address VARCHAR(255) NOT NULL,
    current_address VARCHAR(255),
    contact_number VARCHAR(15),
    contact_email VARCHAR(100),
    birthdate DATE,
    department VARCHAR(100) NOT NULL,
    service_commencement DATE,
    PRIMARY KEY(instructor_id)	
);
/*1c*/
CREATE TABLE book(
book_id VARCHAR(100) PRIMARY KEY NOT NULL,
book_title VARCHAR(50),
Book_author_last_name VARCHAR(50), 
Book_author_first_name VARCHAR(50), 
book_pubdate DATE,
book_acqyear INT,
book_qty INT);
/*1d*/
CREATE TABLE equipment(
    equipment_id VARCHAR(10) NOT NULL,
    equipment_type VARCHAR(100) NOT NULL,
    acquisition_year INT, 
	total_quantity INT NOT NULL,
	model_type VARCHAR(50) NOT NULL,
    PRIMARY KEY(equipment_id)	
);
/*1e*/
CREATE TABLE borrow (
    borrow_id INT AUTO_INCREMENT,
    item_id VARCHAR(100) NOT NULL,
	borrower_id VARCHAR(15) NOT NULL,
	start_date DATETIME NOT NULL,
	end_date DATETIME, 
	PRIMARY KEY(borrow_id)
);
/*1f*/
CREATE TABLE room (
    room_id VARCHAR(15) NOT NULL,
    max_capacity INT NOT NULL,
    room_type ENUM("Multimedia", "Discussion") NOT NULL,
    PRIMARY KEY(room_id)
);

/*2*/
INSERT INTO student (student_id, last_name, first_name, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) VALUES (020220319000001, "Cruzat", "Slaybells Batumbakal", "Consunji St., San Jose, City of San Fernando, Pampanga", "Padre Rada St., Tondo, Manila", 09060938294, "cruzat.slaybellsbatumbakal.student@yuste.edu", "2003-12-19", "BSCS", 2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020220410110002, "Dough", "Jongin", "K", "Cadena de Amor St., Pembo, Taguig", "J. Luna, Matandang Balara, Quezon City", 09089923673, "dough.jongin.student@yuste.edu", "2004-01-03", "BSCS", 2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, contact_number, contact_email, birthdate, program, enrollment_year) VALUES (020220410010003, "Dela Cruz", "Juan", "A", "Gomez St., San Juan, Taytay, Rizal",  09162344567, "ja.delacruz.student@yuste.edu", "2003-12-19", "BSCS", 2022);
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020221114030004, "Kim", "Nayeongyu", "C", "Balantang Road, Jaro, Iloilo City, Iloilo", "Filinvest Ave., Alabang, Muntinlupa", 09009533694, "kimkimmy.student@yuste.edu", "2004-02-16", "BSCS", 2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, contact_number, contact_email, birthdate, program, enrollment_year) VALUES (020221601110005, "Panganiban", "Axel Ronald", "K", "Vista Verde Ave., Santo Domingo, Cainta, Rizal", 09163526325, "ark.panganiban.student@yuste.edu", "2002-10-26", "BSCS", 2022);
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020220418070006,"Dan","Richardson","G","Jose St., Malibay, Pasay City","Mayapis St., Urdaneta, Makati City",09876954654,"dan.richardson.student@yuste.edu","2002-11-23","BSCS",2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020221205050007,"Laif","Efil","E","Roxas Ave., Abuno, Iligan, Lanao del Norte","Leveriza St., Rosario, Pasay City",09543678234,"laif.efil.student@yuste.edu","2003-01-13","BSCS",2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020220418060008,"Descartes","Reyes","F","Don Jose St., Siena, Manila, Metro Manila","Luzuriaga St., Brgy. 12, Bacolod, Negros Occidental",09285649172,"descartes.reyes.student@yuste.edu","2002-10-04","BSCS",2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020220713210009,"Grud","Miupo","U","San Miguel Ave., Santolan, Pasig City","Capetown St., San Isidro, Pasig City",09738451836,"grud.miupo.student@yuste.edu","2003-01-01","BSCS",2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020220124200010,"Astap","Xing","T","Llorente St., Don Julio, Cebu City","Bonifacio St., Balsigan, Baguio, Benguet",09827351845,"astap.xing.student@yuste.edu","2002-09-09","BSCS",2022);
/*3*/
INSERT INTO instructor (instructor_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, department, service_commencement)VALUES (119001713120000, "Quezon", "Manuel", "L","Quezon City, Manila", "#TempAddress", 09178824472, "quezonquezon@quezon.com", "1878-8-19", "AMV", "1900-8-26")
INSERT INTO instructor (instructor_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, department, service_commencement) VALUES (120180401230027, "De Silva", "Ana Gabriela", "V","Rua do Herval, Cristo Rei, Curitiba, Paraná, Brazil", "Amapola St., Bel-Air Village, Makati", 09159078348, "dsanagab.intl.faculty@yuste.edu.com.ph", "1980-8-19", "AB", "2018-8-26")
INSERT INTO instructor (instructor_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, department, service_commencement) VALUES (120200201190027, "Bari", "Abdul", "S", "Abid Ali Road, Hyderabad, Telangana, India", "Quirino Avenue Ext., Paco, Manila", 09123471945, "abaris.intl.faculty@yuste.edu.com.ph", "1965-02-10", "CICS", "2020-03-14")
INSERT INTO instructor (instructor_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, department, service_commencement) VALUES (120100309260010, "Camacho", "Jhon Mhiguel", "Z", "Nuvali Boulevard, Don Jose, Santa Rosa, Laguna", "Padre Noval, Sampaloc, Manila", 09789218374, "jhnmgc.cfad.faculty@yuste.edu.com.ph", "1979-11-11", "CFAD", "2010-08-23")
INSERT INTO instructor (instructor_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, department, service_commencement) VALUES (120110520250010, "Epsilon", "Theta", "Y", "Abad Santos Ave., Bagumbayan, Tacurong, Sultan Kudarat", "Zaldivar St., San Jose de Buenavista, San Jose, Antique", 09789218374, "epstheta.eng.faculty@yuste.edu.com.ph", "1979-12-11", "ENG", "2011-08-23");
/*4*/
SELECT * FROM instructor i WHERE i.department = "CICS";
/*5*/
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("GreatF19252007", "The Great Gatsby", "Fitzgerald", "Francis Scott", "1925-04-10", 2007, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("WhiteL19062010", "White Fang", "London", "Jack", "1906-05-01", 2010, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("BFGD19822009", "The BFG", "Dahl", "Roald", "1982-01-14", 2009, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("CallA20072021", "Call Me by Your Name", "Aciman", "André", "2007-01-23", 2021, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("JaneB18472006", "Jane Eyre", "Brontë", "Charlotte", "1847-10-19", 2006, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("TwoO19972021", "The Two Koreas", "Oberdorfer", "Don", "1997-10-5", 2021, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("QuantumK20232023", "Quantum Supremacy", "Kaku", "Michio", "2023-05-02", 2023, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("SymplecticL19872021", "Symplectic Geometry and Analytical Mathematics", "Libermann", "Paulette", "1987-03-31", 2021, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ("KokoroN19131999", "Kokoro", "Natsume", "Soseki", "1914-08-11", 1999, 5)
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('MeinH19252020', 'Mein Kampf', 'Hitler', 'Adolf', '1925-07-18', 2020, 3);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('DasM18672020', 'Das Kapital', 'Marx', 'Karl', '1867-09-14', 2020, 6);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('TwilightM20052007', 'Twilight', 'Meyer', 'Stephanie', '2005-09-27', 2007, 25);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('SteelA20042020', 'Steel Ball Run', 'Araki', 'Hirohiko', '2004-01-19', 2020, 5);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('VentoA19952018', 'Vento Aureo', 'Araki', 'Hirohiko', '1995-12-11', 2018, 5);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('GameM19962012', 'A Game of Thrones', 'George R.R.', 'Martin', '1996-08-1', 2012, 33);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('ClashM19982013', 'A Clash of Kings', 'George R.R.', 'Martin', '1998-11-16', 2013, 28);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('StormM20002013', 'A Storm of Swords', 'George R.R.', 'Martin', '2000-08-08', 2013, 23);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('FeastM20052014', 'A Feast for Crows', 'George R.R.', 'Martin', '2005-10-17', 2014, 29);
INSERT INTO book(book_id, book_title, book_author_last_name, book_author_first_name, book_pubdate, book_acqyear, book_qty) VALUES ('DanceM20112014', 'A Dance with Dragons', 'George R.R.', 'Martin', '2011-07-12', 2014, 35);

/*6*/
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("VACM-00100", "Vacuum", 1400, 40, "Hoover")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("VACM-02077", "Vacuum", 2077, 2, "Roomba")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("OVEN-32145", "Oven", 2000, 20, "Industrial Oven")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("OVEN-42068", "Oven", 2003, 100, "Toaster Oven")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("LNVO-27172", "Laptop", 2017, 1000, "Lenovo Thinkpad")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("EPIC-12027", "Laptop", 1999, 1, "Kids Music Laptop")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("LGTC-24123", "Mouse", 2014, 30, "Logitech Gaming Mouse")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("MOUS-82887", "Mouse", 1346, 1000, "Dagang Costa")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("SJBL-42000", "Speaker", 2014, 40, "JBL 01")
INSERT INTO equipment (equipment_id, equipment_type, acquisition_year, total_quantity,model_type) VALUES ("MRSL-00007", "Speaker", 2010, 30, "Marshall Stanmore");
/*7*/
SELECT * FROM equipment 
WHERE equipment_type = "Vacuum";
SELECT * FROM equipment 
WHERE equipment_type = "Oven";
SELECT * FROM equipment 
WHERE equipment_type = "Laptop";
SELECT * FROM equipment 
WHERE equipment_type = "Mouse";
SELECT * FROM equipment 
WHERE equipment_type = "Speaker";
/*8*/
INSERT INTO room (room_id, max_capacity, room_type) VALUES (101,30,'Multimedia');
INSERT into room (room_id, max_capacity, room_type) values (102,35,'Multimedia');
INSERT into room (room_id, max_capacity, room_type) values (103,50,'Multimedia');
INSERT into room (room_id, max_capacity, room_type) values (104,45,'Multimedia');
INSERT into room (room_id, max_capacity, room_type) values (105,40,'Multimedia');
INSERT into room (room_id, max_capacity, room_type) values (106,60,'Discussion');
INSERT into room (room_id, max_capacity, room_type) values (107,65,'Discussion');
INSERT into room (room_id, max_capacity, room_type) values (108,70,'Discussion');
INSERT into room (room_id, max_capacity, room_type) values (109,40,'Discussion');
INSERT into room (room_id, max_capacity, room_type) values (110,40,'Discussion');
/*9*/
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('StormM20002013', 020220319000001, '2022-10-19', '2022-10-22');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('BFGD19822009', 020220410110002, '2022-10-19', '2022-10-22');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('JaneB18472006', 020220410110002, '2022-10-22', '2022-10-25');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('WhiteL19062010', 020220319000001, '2022-10-22', '2022-10-26');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('WhiteL19062010', 020220410110002, '2022-10-23', '2022-10-26');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('GreatF19252007', 020220410010003, '2022-10-24', '2022-10-26');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('KokoroN19131999', 020220410010003, '2022-10-24', '2022-10-26');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('QuantumK20232023', 020220713210009, '2022-10-25', '2022-10-28');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('SteelA20042020', 020220713210009, '2022-10-25', '2022-10-28');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('FeastM20052014', 020220713210009, '2022-10-25', '2022-10-28');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('TwoO19972021', 020221114030004, '2022-10-26', '2022-10-29');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('StormM20002013', 020221114030004, '2022-10-26', '2022-10-29');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('DanceM20112014', 020221114030004, '2022-10-26', '2022-10-29');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('StormM20002013', 020221601110005, '2022-11-01', '2022-11-05');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('DanceM20112014', 020221601110005, '2022-11-01', '2022-11-05');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('QuantumK20232023', 020221601110005, '2022-11-01', '2022-11-05');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('DanceM20112014', 020220418070006, '2022-11-06', '2022-11-09');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('TwoO19972021', 020220418070006, '2022-11-06', '2022-11-09');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('StormM20002013', 020220418070006, '2022-11-06', '2022-11-09');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('DanceM20112014', 020221205050007, '2022-11-09', '2022-10-15');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('SteelA20042020', 020221205050007, '2022-11-09', '2022-10-15');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('TwoO19972021', 020220418060008, '2022-11-15', '2022-11-17');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('FeastM20052014', 020220418060008, '2022-11-12', '2022-11-15');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('GreatF19252007', 020220124200010, '2022-11-15', '2022-11-18');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('TwoO19972021', 020220124200010, '2022-11-15', '2022-11-18');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('StormM20002013', 120110520250010, '2022-11-20', '2022-10-26');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('SteelA20042020', 120100309260010, '2022-11-20', '2022-10-26');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('GreatF19252007', 120200201190027, '2022-11-25', '2022-11-27');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('TwoO19972021', 120180401230027, '2022-11-27', '2022-11-29');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ('FeastM20052014', 119001713120000, '2022-11-29', '2022-12-01');
/*10*/
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ("VACM-02077", 120110520250010, '2022-11-02', '2022-12-01');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ("OVEN-32145", 120100309260010, '2022-11-03', '2022-11-16');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ("LNVO-27172", 120200201190027, '2022-11-04', '2022-11-20');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ("LGTC-24123", 120180401230027, '2022-11-05', '2022-11-23');
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) VALUES ("SJBL-42000", 119001713120000, '2022-11-06', '2022-11-24');
/*11*/
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) values (101,120110520250010,'2022-11-02 11:00:00','2022-11-02 13:00:00')
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) values (102,120100309260010,'2022-11-03 09:00:00','2022-11-03 12:00:00')
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) values (103,120200201190027,'2022-11-04 14:00:00','2022-11-04 16:00:00')
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) values (104,120180401230027,'2022-11-05 15:00:00','2022-11-05 18:00:00')
INSERT INTO borrow (item_id, borrower_id, start_date, end_date) values (105,119001713120000,'2022-11-06 13:00:00','2022-11-06 16:00:00')
/*12*/
SELECT s.student_id, s.first_name as StudentName from student s 
/*14 Doesn't Work*/
SELECT
		s.student_id, 
		S.first_name, 
		S.last_name,
		COUNT(*) AS TotalBorrowedBooks
FROM
	Student s
LEFT JOIN borrow bor on s.student_id = bor.borrower_id
LEFT JOIN book b on bor.item_id = b.book_id
group by s.student_id
/*15 Doesn't Work*/
SELECT
i.instructor_id,
i.last_name as instructor_ln,
i.first_name as instructor_fn,
COUNT(bor.item_id) as borrow_count
FROM 
	Instructor i
	LEFT JOIN borrow bor on i.instructor_id = bor.item_id
	LEFT JOIN book on bor.item_id = book.book_id
GROUP BY i.instructor_id


/*17*/
UPDATE instructor 
SET department = "CICS" 
WHERE instructor_id = "120100309260010";
SELECT * FROM instructor 
WHERE department = "CICS";
/*18*/
SELECT 
    rm.room_id,
    bor.borrower_id,
    ins.first_name,
    ins.last_name,
    bor.start_date
    FROM
    room rm
    INNER JOIN borrow bor on rm.room_id = bor.item_id
    left join instructor ins on bor.borrower_id = ins.instructor_id 
    order by rm.room_id
  
