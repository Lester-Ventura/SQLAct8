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
