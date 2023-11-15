CREATE TABLE room (
    room_id INT NOT NULL,
    max_capacity INT NOT NULL,
    room_type ENUM("Multimedia", "Discussion") NOT NULL,
    PRIMARY KEY(room_id)
);

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
