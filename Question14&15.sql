--@etdvprg and @Vladifish
-- # 14 *similar to #15 version
SELECT
    s.student_id,
    CONCAT(s.last_name, ', ', s.first_name) AS "Student",
    COUNT(bk.book_id) AS "Borrowed Books"
FROM
    student s
LEFT JOIN
    borrow b ON s.student_id = b.borrower_id
LEFT JOIN
    book bk ON bk.book_id = b.item_id
GROUP BY s.student_id;


-- # 15
SELECT
	i.instructor_id,
	CONCAT(i.last_name, ', ', i.first_name) AS "Professor",
	COUNT(bk.book_id) as borrow_count 
FROM 
	Instructor i
	LEFT JOIN borrow bor on i.instructor_id = bor.borrower_id
	LEFT JOIN book bk on bor.item_id = bk.book_id
GROUP BY i.instructor_id;

