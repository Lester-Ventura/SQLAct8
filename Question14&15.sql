--@etdvprg and @Vladifish
-- # 14
SELECT
		s.student_id, 
		S.first_name, 
		S.last_name,
		COUNT(*) AS Total Borrowed Books
FROM
	Student s
LEFT JOIN borrow on s.student_id = b.borrower_id
LEFT JOIN book on bor.item_id = book.book_id

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

