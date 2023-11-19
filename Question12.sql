-- from @etdvprg
SELECT
	CONCAT(s.last_name, ', ', s.first_name) AS "Student",
    bk.book_title AS "Book Title",
    CONCAT(bk.book_author_last_name, ', ', bk.book_author_first_name) AS "Book Author",
    CONCAT(b.start_date, ' - ', b.end_date) AS "Borrowing Dates"
	FROM student s
LEFT JOIN borrow b
	ON s.student_id = b.borrower_id
LEFT JOIN book bk
	ON b.item_id = bk.book_id;
