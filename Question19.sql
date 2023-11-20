--@etdvprg
SELECT
	b.borrow_id,
    b.item_id,
    b.start_date,
    b.end_date,
    CASE
		WHEN s.student_id IS NOT NULL THEN 'Student'
        WHEN i.instructor_id IS NOT NULL THEN 'Instructor'
	END AS "Borrower Type",
    CASE
		WHEN s.student_id IS NOT NULL THEN CONCAT(s.first_name, ' ', s.last_name)
        WHEN i.instructor_id IS NOT NULL THEN CONCAT(i.first_name, ' ', i.last_name)
	END AS "Borrower Name",
    e.equipment_type,
    e.model_type
    FROM 
		borrow b
	LEFT JOIN
        equipment e ON b.item_id = e.equipment_id
	LEFT JOIN
        student s ON b.borrower_id = s.student_id
	LEFT JOIN
        instructor i ON b.borrower_id = i.instructor_id
	WHERE
		b.item_id = e.equipment_id;
