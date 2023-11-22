-- Create a script that creates a Borrow of a book entry only when there are sufficient books.
-- TODO: combine these two scripts as inner query
INSERT INTO 
borrow (item_id, borrower_id, start_date, end_date)
	SELECT 
		confirmed.book_id,
		confirmed.user_id,
		'2023-11-20',
		'2024-01-01'
	FROM (
		SELECT 
		checked_book.book_id,
		checked_user.user_id
		FROM (
			SELECT
			user.user_id,
			count(bor.item_id) as borrow_count
				FROM (
				SELECT 
					i.instructor_id as user_id
				FROM instructor i
				UNION
				SELECT
					s.student_id
				FROM student s
			) as user
			  LEFT JOIN borrow bor on bor.borrower_id = user.user_id and bor.end_date > '2023-11-19'
			  LEFT JOIN book bk on bk.book_id = bor.item_id 
			  WHERE user.user_id = 120200201190002 and (bk.book_id = bor.item_id or bor.item_id is null)
			  GROUP BY user.user_id
		) AS checked_user
		CROSS JOIN (
			SELECT 
			bk.book_id, 
			count(bor.item_id) as times_borrowed,
			bk.book_qty
			FROM book bk
			LEFT JOIN 
				borrow bor on bor.item_id = book_id 
				AND bor.end_date > '2023-11-19'
				WHERE bor.item_id = "VentoA19952018" or (bor.item_id is null and bk.book_id = "VentoA19952018")
				GROUP BY book_id
		) AS checked_book
		WHERE checked_user.borrow_count < 3 AND checked_book.times_borrowed < checked_book.book_qty
	) as confirmed;