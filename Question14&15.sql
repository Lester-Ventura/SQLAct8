--@etdvprg and @Vladifish
-- # 14
SELECT
    s.student_id,
    CONCAT(s.last_name, ', ', s.first_name) AS "Student",
    COUNT(b.item_id) AS "Borrowed Books"
FROM
    student s
LEFT JOIN
    borrow b ON s.student_id = b.borrower_id

-- # 15
SELECT
	i.instructor_id as instructor_id,
	i.instructor_last_name as instructor_ln,
	i.instructor_first_name as instructor_fn,
	COUNT(bor.item_id) as borrow_count
FROM 
	Instructor i
	LEFT JOIN borrow bor on i.instructor_id = bor.item_id
	LEFT JOIN book on bor.item_id = book.book_id
GROUP BY i.instructor_id

