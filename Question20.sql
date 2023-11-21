-- Create a script that creates a Borrow of a book entry only when there are sufficient books.
-- TODO: combine these two scripts as inner query
SELECT bk.book_id, count(bor.item_id) FROM book bk
	LEFT JOIN borrow bor on bor.item_id = book_id AND bor.end_date > '2023-10-21'
	WHERE bor.item_id = "StormM20002013"
	GROUP BY book_id;
	
SELECT 
		"VentoA19952018" as book_id,
		checked_user.user_id,
		borrow_count
		FROM (
			SELECT
			user.user_id,
			count(user_id) as borrow_count
				FROM (
				SELECT 
					i.instructor_id as user_id
				FROM instructor i
				UNION
				SELECT
					s.student_id
				FROM student s
			) as user
			  LEFT JOIN borrow bor on bor.borrower_id = user.user_id 
			  LEFT JOIN book bk on bk.book_id = bor.item_id 
			  WHERE user.user_id = 120200201190002 and bk.book_id = bor.item_id 
			  GROUP BY user.user_id
		) AS checked_user
		WHERE checked_user.borrow_count < 3