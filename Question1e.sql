CREATE TABLE borrow(
    borrow_id INT AUTO_INCREMENT,
    item_id VARCHAR(100) NOT NULL,
	borrower_id VARCHAR(15) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE, 
	PRIMARY KEY(borrow_id),
	FOREIGN KEY (item_id) 
		REFERENCES book(book_id),
		ON DELETE CASCADE ON UPDATE CASCADE
	FOREIGN KEY (item_id) 
		REFERENCES equipment(equipment_id),
		ON DELETE CASCADE ON UPDATE CASCADE
	FOREIGN KEY(borrower_id)
		REFERENCES student(student_id)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(borrower_id)
		REFERENCES instructor(instructor_id)
        	ON DELETE CASCADE ON UPDATE CASCADE
);
