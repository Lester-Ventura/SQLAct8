-- Create a script that creates a Borrow of a book entry only when there are sufficient books.
-- TODO: combine these two scripts as inner query
SELECT bk.book_id, count(bor.item_id) FROM book bk
	LEFT JOIN borrow bor on bor.item_id = book_id AND bor.end_date > '2023-10-21'
	WHERE bor.item_id = "StormM20002013"
	GROUP BY book_id;
	
SELECT 
	user.user_id, 
	count(user_id) 
	FROM (
		SELECT 
			i.instructor_id as user_id
		FROM instructor i
		UNION
		SELECT
			s.student_id
		FROM student s
	) as user
	LEFT JOIN borrow bor on bor.borrower_id = user.user_id -- AND bor.end_date > "2023-01-01"
	WHERE user.user_id = 120200201190002                   -- uncomment to see it in action
	GROUP BY user.user_id