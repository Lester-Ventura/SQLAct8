/*All codes here are tested, Note: Ctrl+f # to find placeholder inserts, to be filled.*/
/*TableDroppersDeleters*/
delete student
delete room_usage
delete book
delete borrow
delete instructor
delete equipment
delete room
drop table borrow
drop table room_usage
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
	start_date DATE NOT NULL,
	end_date DATE, 
	PRIMARY KEY(borrow_id),
	FOREIGN KEY (item_id) 
		REFERENCES book(book_id),
	FOREIGN KEY(borrower_id)
		REFERENCES student(student_id)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(borrower_id)
		REFERENCES instructor(instructor_id)
        ON DELETE CASCADE ON UPDATE cascade
);
/*1f*/
CREATE TABLE room (
    room_id INT NOT NULL,
    max_capacity INT NOT NULL,
    room_type ENUM("Multimedia", "Discussion") NOT NULL,
    PRIMARY KEY(room_id)
);
/*1f*/
 CREATE TABLE room_usage (
	usage_id INT AUTO_INCREMENT,
	room_id INT NOT NULL,
	user_id VARCHAR(15) NOT NULL,
	start_timestamp DATETIME NOT NULL,
	end_timestamp DATETIME,
    PRIMARY KEY(usage_id),
	FOREIGN KEY(room_id)
			REFERENCES room(room_id)
			ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(user_id)
			REFERENCES student(student_id)
			ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(user_id)
			REFERENCES instructor(instructor_id)
			ON DELETE CASCADE ON UPDATE CASCADE
);
/*2*/
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) VALUES (020220319000001, "Cruzat", "Slaybells Batumbakal","D", "Consunji St., San Jose, City of San Fernando, Pampanga", "Padre Rada St., Tondo, Manila", 09060938294, "cruzat.slaybellsbatumbakal.student@yuste.edu", "2003-12-19", "BSCS", 2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020220410110002, "Dough", "Jongin", "K", "Cadena de Amor St., Pembo, Taguig", "J. Luna, Matandang Balara, Quezon City", 09089923673, "dough.jongin.student@yuste.edu", "2004-01-03", "BSCS", 2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020220410010003, "Dela Cruz", "Juan", "A", "Gomez St., San Juan", "Taytay, Rizal",  09162344567, "juan.delacruz.student@yuste.edu", "2003-12-19", "BSCS", 2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020221114030004, "Kim", "Nayeongyu", "C", "Balantang Road, Jaro, Iloilo City, Iloilo", "Filinvest Ave., Alabang, Muntinlupa", 09009533694, "kimkimmy.student@yuste.edu", "2004-02-16", "BSCS", 2022)
INSERT INTO student (student_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, program, enrollment_year) values (020221601110005, "Panganiban", "Axel Ronald", "K", "Vista Verde Ave., Santo Domingo", "Cainta, Rizal",  09163526325, "ark.panganiban.student@yuste.edu", "2002-10-26", "BSCS", 2022)
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
INSERT INTO instructor (instructor_id, last_name, first_name, middle_initial, permanent_address, current_address, contact_number, contact_email, birthdate, department, service_commencement) VALUES (120100520250010, "Epsilon", "Theta", "Y", "#", "#", 09789218374, "jhnmgc.cfad.faculty@yuste.edu.com.ph", "1979-11-11", "CFAD", "2010-08-23");
/*4*/
SELECT * FROM instructor i WHERE i.department = "CICS";
/*5*/
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
INSERT INTO room (room_code, max_capacity, room_type) VALUES ("122", "50", 'Multimedia');

/*9*/
/*17*/
UPDATE instructor 
SET department = "CICS" 
WHERE instructor_id = "120100309260010";
SELECT * FROM instructor 
WHERE department = "CICS";
